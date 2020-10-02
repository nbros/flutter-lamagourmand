import 'package:flutter/material.dart';
import 'data.dart';

class RecipeSearchDelegate extends SearchDelegate<Recipe> {
  List<Recipe> recipes;

  RecipeSearchDelegate() {
    recipes = data.fold(List(), (e, list) => list + e);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    String uppercasedQuery = query.toUpperCase();
    final filtered = recipes.where((recipe) => recipe.name.toUpperCase().contains(uppercasedQuery)).toList();
    filtered.sort((a, b) => a.name.toUpperCase().compareTo(b.name.toUpperCase()));

    return ListView(
      children: [
        ...filtered.map(
          (recipe) => GestureDetector(
            onTap: () => close(context, recipe),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: recipe.asset,
                    child: Image.asset("assets/" + recipe.asset, width: 150),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      recipe.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0)
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}
