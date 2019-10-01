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
