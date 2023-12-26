import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'search.dart';
import 'data.dart';
import 'drawer.dart';

void main() => runApp(const MyApp());

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fr'),
      ],
      title: 'Le Lama Gourmand',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.orange[100],
      ),
      navigatorKey: navigatorKey,
      home: const _Home(),
    );
  }
}

class _Home extends StatefulWidget {
  const _Home();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Le Lama Gourmand"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              final selectedRecipe = await showSearch(context: context, delegate: RecipeSearchDelegate());
              if (selectedRecipe != null) {
                navigatorKey.currentState?.push(MaterialPageRoute(builder: (context) => Details(selectedRecipe)));
              }
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange[100],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: "Sucré"),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Salé"),
          BottomNavigationBarItem(icon: Icon(Icons.local_drink), label: "Boissons"),
        ],
        currentIndex: _pageIndex,
        onTap: (index) => setState(() {
          _pageIndex = index;
        }),
      ),
      body: Page(pageIndex: _pageIndex),
      drawer: const LamaDrawer(),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

class Page extends StatelessWidget {
  const Page({
    super.key,
    required int pageIndex,
  }) : _pageIndex = pageIndex;

  final int _pageIndex;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: Platform.isWindows,
      thickness: Platform.isWindows ? 12 : null,
      radius: Radius.zero,
      child: ListView.builder(
        primary: true,
        key: PageStorageKey(_pageIndex),
        itemBuilder: (context, index) {
          final recipe = data[_pageIndex][index];
          return RecipeOverviewCard(recipe);
        },
        itemCount: data[_pageIndex].length,
      ),
    );
  }
}

class RecipeOverviewCard extends StatelessWidget {
  const RecipeOverviewCard(this.recipe, {super.key});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Details(recipe)));
            },
            child: Card(
              elevation: 8,
              color: Colors.orange[200],
              child: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: Column(
                  children: <Widget>[
                    RecipeImage(recipe),
                    const Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text(recipe.name, style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  final Recipe recipe;
  const Details(this.recipe, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: ListView(
        children: [
          RecipeImage(recipe),
          if (recipe.ingredients.isNotEmpty) IngredientsCard(recipe),
          if (recipe.instructions.isNotEmpty) RecipeCard(recipe),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "Bon Appétit !",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.deepOrange),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RecipeImage extends StatelessWidget {
  const RecipeImage(this.recipe, {super.key});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: recipe.asset,
      child: Image.asset("assets/${recipe.asset}", fit: BoxFit.contain),
    );
  }
}

class IngredientsCard extends StatelessWidget {
  const IngredientsCard(this.recipe, {super.key});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            children: [
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.topCenter,
                child: Text("Ingrédients", style: Theme.of(context).textTheme.titleLarge?.apply(fontSizeDelta: 5)),
              ),
              if (recipe.ingredientsQuantity != null) Text("(${recipe.ingredientsQuantity})", style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 20),
              ...buildIngredients(recipe.ingredients)
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildIngredients(List<Ingredient> ingredients) {
    final widgets = <Widget>[];
    for (int i = 0; i < ingredients.length; i++) {
      final ingredient = ingredients[i];
      if (i > 0) {
        widgets.add(const Divider());
      }
      widgets.add(IngredientLine(ingredient));
    }
    return widgets;
  }
}

class IngredientLine extends StatelessWidget {
  const IngredientLine(this.ingredient, {super.key});
  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                ingredient.quantity,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.end,
              ),
            )),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                ingredient.label,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )),
      ],
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard(this.recipe, {super.key});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Recette", style: Theme.of(context).textTheme.titleLarge),
                ),
              ),
              ...buildSteps(recipe.instructions),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildSteps(List<Instr> steps) {
    final tiles = <ListTile>[];
    for (int i = 0; i < steps.length; i++) {
      final step = steps[i];
      tiles.add(ListTile(
        leading: _StepCircle(i + 1),
        title: Text(step.content),
      ));
    }
    return tiles;
  }
}

class _StepCircle extends StatefulWidget {
  const _StepCircle(this.index);
  final int index;

  @override
  _StepCircleState createState() => _StepCircleState();
}

class _StepCircleState extends State<_StepCircle> {
  bool _done = false;

  @override
  Widget build(BuildContext context) {
    const size = 42.0;
    return GestureDetector(
      onTap: () => setState(() => _done = !_done),
      child: AnimatedContainer(
        constraints: const BoxConstraints(minWidth: size, minHeight: size, maxWidth: size, maxHeight: size),
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: _done ? Colors.grey[300] : Colors.deepOrange,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            _done ? "✓" : "${widget.index}",
            style: const TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
