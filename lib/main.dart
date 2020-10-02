import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'search.dart';
import 'data.dart';
import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('fr'),
      ],
      title: 'Le Lama Gourmand',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.orange[100],
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Le Lama Gourmand"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final selectedRecipe = await showSearch(context: context, delegate: RecipeSearchDelegate());
              if (selectedRecipe != null) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Details(selectedRecipe)));
              }
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange[100],
        items: [
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
      drawer: LamaDrawer(),
    );
  }

  @override
  void initState() {
    super.initState();
    initDisplayMode();
  }

  void initDisplayMode() async {
    try {
      var allModes = await FlutterDisplayMode.supported;
      allModes.forEach((mode) => log("display mode: $mode"));
      var curMode = await FlutterDisplayMode.current;
      log("current display mode: $curMode");
      var newMode = await FlutterDisplayMode.current;
      for (var mode in allModes) {
        if(mode.width == curMode.width && mode.height == curMode.height && mode.refreshRate > newMode.refreshRate) {
          newMode = mode;
        }
      }
      if(newMode != curMode) {
        log("setting display mode: $newMode");
        FlutterDisplayMode.setMode(newMode);
      }
    } on PlatformException catch (e) {
      log("error initializing display mode", level: 900, error: e);
    }
  }
}

class Page extends StatelessWidget {
  const Page({
    Key key,
    @required int pageIndex,
  })  : _pageIndex = pageIndex,
        super(key: key);

  final int _pageIndex;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: PageStorageKey(_pageIndex),
      itemBuilder: (context, index) {
        final recipe = data[_pageIndex][index];
        return RecipeOverviewCard(recipe);
      },
      itemCount: data[_pageIndex].length,
    );
  }
}

class RecipeOverviewCard extends StatelessWidget {
  const RecipeOverviewCard(this.recipe);
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
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Column(
                  children: <Widget>[
                    RecipeImage(recipe),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text(recipe.name, style: TextStyle(fontSize: 18)),
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
  const Details(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: ListView(
        children: [
          RecipeImage(recipe),
          if (recipe.ingredients.isNotEmpty) IngredientsCard(recipe),
          if (recipe.instructions.isNotEmpty) RecipeCard(recipe),
          Padding(
            padding: const EdgeInsets.all(20.0),
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
  const RecipeImage(this.recipe);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: recipe.asset,
      child: Image.asset("assets/" + recipe.asset, fit: BoxFit.contain),
    );
  }
}

class IngredientsCard extends StatelessWidget {
  const IngredientsCard(this.recipe);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            children: [
              SizedBox(height: 12),
              Align(
                alignment: Alignment.topCenter,
                child: Text("Ingrédients", style: Theme.of(context).textTheme.headline6.apply(fontSizeDelta: 5)),
              ),
              if (recipe.ingredientsQuantity != null) Text("(${recipe.ingredientsQuantity})", style: Theme.of(context).textTheme.subtitle2),
              SizedBox(height: 20),
              ...buildIngredients(recipe.ingredients)
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildIngredients(List<Ingredient> ingredients) {
    final widgets = List<Widget>();
    for (int i = 0; i < ingredients.length; i++) {
      final ingredient = ingredients[i];
      if (i > 0) {
        widgets.add(Divider());
      }
      widgets.add(IngredientLine(ingredient));
    }
    return widgets;
  }
}

class IngredientLine extends StatelessWidget {
  const IngredientLine(this.ingredient);
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
                style: Theme.of(context).textTheme.subtitle1,
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
                style: Theme.of(context).textTheme.subtitle1,
              ),
            )),
      ],
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard(this.recipe);
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
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
                  child: Text("Recette", style: Theme.of(context).textTheme.headline6),
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
    final tiles = List<ListTile>();
    for (int i = 0; i < steps.length; i++) {
      final step = steps[i];
      tiles.add(ListTile(
        leading: new StepCircle(i + 1),
        title: Text(step.content),
      ));
    }
    return tiles;
  }
}

class StepCircle extends StatefulWidget {
  const StepCircle(this.index);
  final int index;

  @override
  _StepCircleState createState() => _StepCircleState();
}

class _StepCircleState extends State<StepCircle> {
  bool _done = false;

  @override
  Widget build(BuildContext context) {
    const size = 42.0;
    return GestureDetector(
      onTap: () => setState(() => _done = !_done),
      child: AnimatedContainer(
        constraints: BoxConstraints(minWidth: size, minHeight: size, maxWidth: size, maxHeight: size),
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: _done ? Colors.grey[300] : Colors.deepOrange,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            _done ? "✓" : "${widget.index}",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
