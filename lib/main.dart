import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Recipe {
  final String name;
  final String asset;
  final List<Step> steps;
  final List<Ingredient> ingredients;
  const Recipe({this.name, this.asset, this.steps = const [], this.ingredients = const []});
}

class Ingredient {
  final String label;
  final String quantity;
  const Ingredient(this.label, this.quantity);
}

class Step {
  final String content;
  const Step(this.content);
}

const data = [
  // Sucré
  [
    Recipe(name: "Carrot cake", asset: "carrot_cake.jpg", ingredients: [
      Ingredient("farine", "250g"),
      Ingredient("levure", "1 sachet"),
      Ingredient("bicarbonate", "1 cuillère à café"),
      Ingredient("canelle", "1 cuillère à café 1/2"),
      Ingredient("noix de muscade", "1/4 cuillère à café"),
      Ingredient("sel", "1/2 cuillère à café"),
      Ingredient("noix de pécan", "(pour le décor)"),
      Ingredient("huile", "180mL"),
      Ingredient("oeufs", "4 gros"),
      Ingredient("sucre brun", "300g"),
      Ingredient("sucre blanc", "100g"),
      Ingredient("compote de pomme", "125g"),
      Ingredient("vanille", "1 cuillère à café"),
      Ingredient("carottes", "300g"),
      Ingredient("philadelphia", "226g"),
      Ingredient("beurre doux", "115g"),
      Ingredient("sucre glace", "240g"),
      Ingredient("extrait de vanille", "1 cuillère à café"),
    ], steps: [
      Step("Dans un premier bol mélanger la farine, la levure le bicarbonate, la canelle, le sel et la noix de muscade."),
      Step("Dans un second bol mélanger l'huile, les oeufs, les sucres brun & blanc, la compote, la vanille, puis les carottes."),
      Step("Verser le contenu du bol 2 dans le bol 1 et mélanger jusqu'à obtention d'une pâte homogène."),
      Step("Puis cuire à 180°C pendant 35 minutes."),
      Step("Pour le glaçage, dans un saladier lisser au mixer plongeant le philadephia, y ajouter le beurre et mixer 30 secondes."),
      Step("Ajouter le sucre, l'extrait de vanille si désiré et mixer pour avoir une crème bien lisse. "),
      Step("Couper le gâteau en 2 dans l'épaisseur et monter le gâteau."),
      Step("On mettra une moitié de gateau, du glaçage, l'autre moitié de gâteau et on recouvre de glaçage l'ensemble du gâteau ainsi monté."),
      Step("On décorera de noix de pécan."),
      Step("Laisser plusieurs heures au réfrigérateur avant dégustation."),
    ]),
    Recipe(
      name: "Pancake",
      asset: "pancake.jpg",
      ingredients: [
        Ingredient("farine", "125g"),
        Ingredient("sachet de levure", "1/2"),
        Ingredient("oeuf", "1"),
        Ingredient("sucre roux", "15g"),
        Ingredient("beurre salé", "35g"),
        Ingredient("lait", "10cL"),
        Ingredient("rhum", "5cL"),
      ],
      steps: [
        Step("Faire fondre le beurre."),
        Step("Dans un saladier mettre la farine, la levure et le sucre, mélanger puis faire un puit."),
        Step("Ajouter ensuite l'oeuf et fouetter doucement pour éviter les grumeaux."),
        Step("""Incorporer le beurre fondu en continuant à fouetter pour faciliter le mélange, puis délayer progressivement avec le lait et le rhum en continuant à fouetter jusqu'à obtention d'une pâte bien lisse.\nAttention la pâte est bien plus épaisse qu'une pâte à crêpe mais plus fluide qu'une pâte à gâteau."""),
        Step("La pâte peut être utilisée dès maintenant mais supporte très bien le passage au réfrigérateur."),
        Step("Faire cuire à la poêle à feux moyen en mettant une petite dose de pâte sans ajout de matière grasse nécessaire."),
        Step("Retourner le pancake quand des bulles se forment à la surface. "),
        Step("À déguster chaud avec du sirop d'érable, ou du sucre glace, ou de la pâte à tartiner. La garniture n'a de limite que votre imagination et votre goût !"),
      ],
    ),
    Recipe(
      name: "Galette à la frangipane",
      asset: "galette_cuite.jpg",
      ingredients: [
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
      ],
      steps: [
        Step(""),
        Step(""),
        Step(""),
        Step(""),
        Step(""),
        Step(""),
        Step(""),
      ],
    ),
    Recipe(
      name: "Muesli",
      asset: "muesli.jpg",
      ingredients: [
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
        Ingredient("", ""),
      ],
      steps: [
        Step(""),
        Step(""),
        Step(""),
        Step(""),
        Step(""),
        Step(""),
        Step(""),
      ],
    ),
  ],
  // Salé
  [
    Recipe(name: "Flammekueche", asset: "flammekueche.jpg", steps: [
      Step("Recouvrir la pâte de crème fraiche, puis d'allumettes fumées, d'oignons déshydratés et de gruyère râpé."),
      Step("Cuire au four à 180°C pendant ~25min"),
    ], ingredients: [
      Ingredient("pâte feuilletée ou pâte à pizza", "1"),
      Ingredient("alumettes fumées", "150g"),
      Ingredient("oignon déshydraté", "1"),
      Ingredient("gruyère râpé", "quantité suffisante"),
      Ingredient("crème fraiche liquide", "20cL"),
    ]),
    Recipe(name: "Courge butternut gratinée", asset: "courge_butternut.jpg"),
    Recipe(name: "Pâte à pizza aux herbes de provence", asset: "pate_pizza_herbes_provence.jpg"),
    Recipe(name: "Pizza chèvre miel", asset: "pizza_chevre_miel.jpg"),
    Recipe(name: "Chirashi", asset: "chirashi1.jpg"),
    Recipe(name: "Gnocchis courgettes et crevettes", asset: "gnocchis_courgettes_crevettes.jpg"),
    Recipe(name: "Pâtes aux épinards et roquefort", asset: "pates_epinards_roquefort.jpg"),
    Recipe(name: "Pissaladière", asset: "pissaladiere.jpg"),
    Recipe(name: "Quiche aux poireaux", asset: "quiche_poireaux.jpg"),
    Recipe(name: "Burger", asset: "burger.jpg"),
    Recipe(name: "Bagnat", asset: "bagnat.jpg"),
    Recipe(name: "Risotto", asset: "risotto.jpg"),
  ],
  // Boissons
  [
    Recipe(name: "Sangriananas", asset: "sangriananas.jpg"),
  ]
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            title: Text("Sucré"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            title: Text("Salé"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            title: Text("Boissons"),
          ),
        ],
        currentIndex: _pageIndex,
        onTap: (index) => setState(() {
          _pageIndex = index;
        }),
      ),
      body: Page(pageIndex: _pageIndex),
    );
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
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        recipe: recipe,
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 8,
                  color: Colors.orange[200],
                  child: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Column(
                      children: <Widget>[
                        new RecipeImage(recipe),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                        ),
                        Text(
                          recipe.name,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: data[_pageIndex].length,
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

class Details extends StatelessWidget {
  final Recipe recipe;
  const Details({Key key, @required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name)),
      body: ListView(
        children: [
          RecipeImage(recipe),
          if (recipe.ingredients.isNotEmpty) IngredientsCard(recipe),
          if (recipe.steps.isNotEmpty) RecipeCard(recipe),
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
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Ingrédients", style: Theme.of(context).textTheme.title),
                ),
              ),
              for (final ingredient in recipe.ingredients) ...[
                Divider(),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            ingredient.label,
                            textAlign: TextAlign.end,
                            style: Theme.of(context).textTheme.title,
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            ingredient.quantity,
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        )),
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  /*List<Widget> buildIngredients(List<Ingredient> ingredients) {
    final tiles = List<ListTile>();

    for (int i = 0; i < ingredients.length; i++) {
      final step = steps[i];
      tiles.add(ListTile(
        leading: CircleAvatar(
          child: Text("${i + 1}"),
        ),
        title: Text(step.content),
      ));
    }
    return tiles;
  }*/
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
                  child: Text("Recette", style: Theme.of(context).textTheme.title),
                ),
              ),
              ...buildSteps(recipe.steps),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildSteps(List<Step> steps) {
    final tiles = List<ListTile>();
    for (int i = 0; i < steps.length; i++) {
      final step = steps[i];
      tiles.add(ListTile(
        leading: CircleAvatar(
          child: Text("${i + 1}"),
        ),
        title: Text(step.content),
      ));
    }
    return tiles;
  }
}
