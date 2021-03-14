class Recipe {
  final String name;
  final String asset;
  final String? ingredientsQuantity;
  final List<Ingredient> ingredients;
  final List<Instr> instructions;
  const Recipe({
    required this.name,
    required this.asset,
    this.ingredients = const [],
    this.ingredientsQuantity,
    this.instructions = const [],
  });
}

class Ingredient {
  final String label;
  final String quantity;
  const Ingredient(this.label, this.quantity);
}

class Instr {
  final String content;
  const Instr(this.content);
}

const data = [
  // Sucré
  [
    Recipe(
      name: "Carrot cake",
      asset: "carrot_cake.jpg",
      ingredientsQuantity: "pour 8 personnes",
      ingredients: [
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
      ],
      instructions: [
        Instr("Dans un premier bol mélanger la farine, la levure, le bicarbonate, la canelle, le sel et la noix de muscade."),
        Instr("Dans un second bol mélanger l'huile, les oeufs, les sucres brun & blanc, la compote, la vanille, puis les carottes."),
        Instr("Verser le contenu du bol 2 dans le bol 1 et mélanger jusqu'à obtention d'une pâte homogène."),
        Instr("Puis cuire à 180°C pendant 35 minutes."),
        Instr("Pour le glaçage, dans un saladier lisser au mixer plongeant le philadephia, y ajouter le beurre et mixer 30 secondes."),
        Instr("Ajouter le sucre, l'extrait de vanille si désiré et mixer pour avoir une crème bien lisse. "),
        Instr("Couper le gâteau en 2 dans l'épaisseur et monter le gâteau."),
        Instr("On mettra une moitié de gateau, du glaçage, l'autre moitié de gâteau et on recouvre de glaçage l'ensemble du gâteau ainsi monté."),
        Instr("On décorera de noix de pécan."),
        Instr("Laisser plusieurs heures au réfrigérateur avant dégustation."),
      ],
    ),
    Recipe(
      name: "Pancake",
      asset: "pancake.jpg",
      ingredientsQuantity: "pour 2 personnes",
      ingredients: [
        Ingredient("farine", "125g"),
        Ingredient("sachet de levure", "1/2"),
        Ingredient("oeuf", "1"),
        Ingredient("sucre roux", "15g"),
        Ingredient("beurre salé", "35g"),
        Ingredient("lait", "10cL"),
        Ingredient("rhum", "5cL"),
      ],
      instructions: [
        Instr("Faire fondre le beurre."),
        Instr("Dans un saladier mettre la farine, la levure et le sucre, mélanger puis faire un puit."),
        Instr("Ajouter ensuite l'oeuf et fouetter doucement pour éviter les grumeaux."),
        Instr("Incorporer le beurre fondu en continuant à fouetter pour faciliter le mélange, " +
            "puis délayer progressivement avec le lait et le rhum en continuant à fouetter jusqu'à obtention d'une pâte bien lisse.\n" +
            "Attention la pâte est bien plus épaisse qu'une pâte à crêpe mais plus fluide qu'une pâte à gâteau."),
        Instr("La pâte peut être utilisée dès maintenant mais supporte très bien le passage au réfrigérateur."),
        Instr("Faire cuire à la poêle à feux moyen en mettant une petite dose de pâte sans ajout de matière grasse nécessaire."),
        Instr("Retourner le pancake quand des bulles se forment à la surface. "),
        Instr("À déguster chaud avec du sirop d'érable, ou du sucre glace, ou de la pâte à tartiner.\n" +
            "La garniture n'a de limite que votre imagination et votre goût !"),
      ],
    ),
    Recipe(
      name: "Galette à la frangipane",
      ingredientsQuantity: "pour 6 personnes",
      asset: "galette_cuite.jpg",
    ),
    Recipe(
      name: "Muesli",
      asset: "muesli.jpg",
      ingredientsQuantity: "pour ~700g",
      ingredients: [
        Ingredient("flocons d'avoine", "300g"),
        Ingredient("pépites de chocolat", "100g"),
        Ingredient("graines de tournesol", "30g"),
        Ingredient("eau chaude", "150mL"),
        Ingredient("miel", "80g"),
        Ingredient("fleur de sel", "3 pincées"),
        Ingredient("noix de coco râpée", "50g"),
      ],
      instructions: [
        Instr("BOL 1 : Mélanger les flocons d'avoine, les graines de tournesol, la fleur de sel et la noix de coco râpée."),
        Instr("BOL 2 : Mélanger l'eau et le miel"),
        Instr("Verser le bol 2 dans le 1 et bien mélanger pour que tout soit bien humide et collant. "),
        Instr("Répartir le mélange ainsi obtenu sur une plaque de cuisson préalablement recouverte de papier cuisson."),
        Instr("Cuire 40 minutes à 150°C en remuant régulièrement pour que ça ne roussisse pas !"),
        Instr("Si besoin rajouter du miel pendant cuisson et mélanger pour coller d'avantage les céréales entre elles. "),
        Instr("Laisser refroidir puis ajouter les pépites de chocolat. "),
        Instr("Conserver dans une boîte en métal pour préserver le croquant."),
      ],
    ),
  ],
  // Salé
  [
    Recipe(
      name: "Flammekueche",
      asset: "flammekueche.jpg",
      ingredientsQuantity: "pour 4 à 6 personnes",
      ingredients: [
        Ingredient("pâte feuilletée ou pâte à pizza", "1"),
        Ingredient("alumettes fumées", "150g"),
        Ingredient("oignon déshydraté", "1"),
        Ingredient("gruyère râpé", "quantité suffisante"),
        Ingredient("crème fraiche liquide", "20cL"),
      ],
      instructions: [
        Instr("Recouvrir la pâte de crème fraiche, puis d'allumettes fumées, d'oignons déshydratés et de gruyère râpé."),
        Instr("Cuire au four à 180°C pendant ~25min"),
      ],
    ),
    Recipe(
      name: "Courge butternut gratinée",
      asset: "courge_butternut.jpg",
      ingredients: [
        Ingredient("courge butternut", "1"),
        Ingredient("petit chèvre", "1"),
        Ingredient("pincée de sel", "1"),
        Ingredient("pincée de poivre", "1"),
        Ingredient("pincée d'herbes de provence", "1"),
        Ingredient("crème fraiche liquide", "20cL"),
      ],
      instructions: [
        Instr("Dans un bol mélanger le chèvre coupé en petits dés avec la crème, assaisonner."),
        Instr("Couper la courge butternut en deux puis retirer les graines en faisant un creux suffisant pour pouvoir y verser la préparation crème-chèvre."),
        Instr("Cuire au four à 180°C pendant 1h à chaleur tournante"),
      ],
    ),
    Recipe(
      name: "Pâte à pizza aux herbes de provence",
      asset: "pate_pizza_herbes_provence.jpg",
      ingredientsQuantity: "pour 4 à 6 personnes",
      ingredients: [
        Ingredient("farine", "250g"),
        Ingredient("levure de boulanger", "1/2 sachet"),
        Ingredient("huile d'olive", "25g"),
        Ingredient("sel", "1 pincée"),
        Ingredient("eau tiède", "125mL"),
        Ingredient("sucre", "1"),
      ],
      instructions: [
        Instr("Dans un saladier mettre la farine et le sel, mélanger et faire un puit."),
        Instr("Mettre l'huile d'olive et sabler finement avec les doigts."),
        Instr("Refaire un puit, y mettre la levure, l'eau tiède et le sucre."),
        Instr("Mélanger, former une boule avec la pâte et laisser pousser à température ambiante une heure."),
        Instr("Etaler finement au rouleau à pâtisserie sur du papier cuisson."),
        Instr("Garnir et mettre sur une plaque de cuisson au milieu du four à chaleur tournante 210°C pendant 20 à 25min."),
      ],
    ),
    Recipe(
      name: "Pizza chèvre miel",
      asset: "pizza_chevre_miel.jpg",
      ingredientsQuantity: "pour 4 à 6 personnes",
      ingredients: [
        Ingredient("pâte feuilletée ou pâte à pizza", "1"),
        Ingredient("petite bûche de chèvre", "1"),
        Ingredient("crème fraiche liquide", "20cl"),
        Ingredient("gruyère râpé", ""),
        Ingredient("miel liquide", ""),
      ],
      instructions: [
        Instr("Recouvrir la pâte de crème fraiche, puis parsemer de morceaux de chèvre, zébrer de miel et recouvrir de gruyère râpé."),
        Instr("Cuire au four à 180°C pendant ~25min"),
      ],
    ),
    Recipe(
      name: "Chirashi",
      asset: "chirashi1.jpg",
      ingredientsQuantity: "pour 2 personnes",
      ingredients: [
        Ingredient("riz à sushi", "200g"),
        Ingredient("eau", "400mL"),
        Ingredient("avocat", "1"),
        Ingredient("thon cru", "100g"),
        Ingredient("saumon cru", "100g"),
        Ingredient("crevettes", "6"),
        Ingredient("vinaigre de riz", "3 cuilllères à soupe"),
        Ingredient("sucre", "2 1/2 cuilllères à café"),
        Ingredient("sel", "1 cuilllère à café"),
        Ingredient("sésame complet grillé", ""),
      ],
      instructions: [
        Instr("Faire cuire le riz environ 10 minutes jusqu'à évaporation complète de l'eau."),
        Instr("Pendant ce temps, dans un bol mélanger le vinaigre de riz, le sucre et le sel."),
        Instr("Quand le riz est cuit, sortir du feu et y ajouter tout de suite le mélange vinaigré et bien mélanger."),
        Instr("Mettre le riz vinaigré dans deux bols, lisser et laisser refroidir à température ambiante puis au réfrigérateur."),
        Instr("Disposer ensuite en rosace des lamelles de poisson, d'avocat et les crevettes sur le riz."),
        Instr("Saupoudrer de sésame et c'est prêt."),
      ],
    ),
    Recipe(
      name: "Gnocchis courgettes et crevettes",
      asset: "gnocchis_courgettes_crevettes.jpg",
      ingredientsQuantity: "pour 2 personnes",
      ingredients: [
        Ingredient("gnocchis", "300g"),
        Ingredient("courgette", "1"),
        Ingredient("crème fraiche", "20cL"),
        Ingredient("crevettes décortiquées", "10"),
        Ingredient("gruyère râpé", "1 poignée"),
        Ingredient("beurre", ""),
        Ingredient("sel", ""),
        Ingredient("poivre", ""),
      ],
      instructions: [
        Instr("Couper la courgette en petits morceaux et la faire cuire dans une poêle dans de l'huile jusqu'à ce qu'elle soit bien fondante."),
        Instr("Faire dorer les gnocchis dans du beurre fondu dans une poêle, puis y ajouter la crème fraiche, la courgette et les crevettes décortiquées."),
        Instr("Laisser cuire quelques minutes, ajouter le gruyère râpé saler et poivrer."),
      ],
    ),
    Recipe(
      name: "Pâtes aux épinards et roquefort",
      asset: "pates_epinards_roquefort.jpg",
      ingredientsQuantity: "pour 2 personnes",
      ingredients: [
        Ingredient("tagliatelles", "150g"),
        Ingredient("épinards surgelés à la crème", "200g"),
        Ingredient("roquefort", "60g"),
      ],
      instructions: [
        Instr("Faire cuire les pâtes."),
        Instr("Pendant ce temps réchauffer les épinards à la crème dans une casserole à feu doux."),
        Instr("Egouter les tagliatelles, ajouter les épinards et le roquefort coupé en petits morceaux."),
        Instr("Bien mélanger pour avoir du roquefort sur l'ensemble des pâtes."),
        Instr("Servir bien chaud.\nAttention au sel, goûter avant car le roquefort sale beaucoup !")
      ],
    ),
    Recipe(
      name: "Pissaladière",
      asset: "pissaladiere.jpg",
      ingredientsQuantity: "pour 6 personnes",
      ingredients: [
        Ingredient("oignons surgelés ou frais", "1kg"),
        Ingredient("pâte feuilletée", "1"),
        Ingredient("gruyère râpé", ""),
        Ingredient("sucre", "3 cuillères à soupe"),
        Ingredient("anchois", "1 boîte"),
      ],
      instructions: [
        Instr("Sortir la pâte feuilletée du réfrigérateur pour qu'elle ne se fissure pas quand on la déroulera."),
        Instr("Faire dorer les oignons dans une poêle dans de l'huile."),
        Instr("Une fois cuits, ajouter le sucre, son but est de casser l'acidité de l'oignon."),
        Instr("Dérouler la pâte feuilletée à plat sur une plaque de cuisson, y déposer les oignons en laissant 1cm sur la périphérie de la pâte."),
        Instr("Recouvrir de gruyère râpé puis décorer avec les anchois."),
        Instr("Faire cuire à 180°C pendant 25 à 30 minutes."),
      ],
    ),
    Recipe(
      name: "Quiche aux poireaux",
      asset: "quiche_poireaux.jpg",
      ingredientsQuantity: "pour 6 personnes",
      ingredients: [
        Ingredient("pâte feuilletée", "1"),
        Ingredient("blancs de poireaux", "3"),
        Ingredient("crème fraiche liquide", "20cL"),
        Ingredient("gruyère râpé", ""),
        Ingredient("oeufs", "3"),
        Ingredient("allumettes de lardon fumées", "150g"),
        Ingredient("sel", ""),
        Ingredient("poivre", ""),
      ],
      instructions: [
        Instr("Sortir la pâte feuilletée du réfrigérateur pour qu'elle soit à température ambiante."),
        Instr("Faire cuire les poireaux coupés en petits morceaux dans une pôele huilée, à feu doux et avec un couvercle pour garder l'humidité."),
        Instr("Une fois les poireaux bien fondants, ajouter les allumettes fumées et laisser cuire quelques minutes."),
        Instr("Dans un saladier battre les oeufs avec la crème fraiche, ajouter les poireaux et allumettes, saler, poivrer"),
        Instr("Mettre la pâte feuilletée dans un moule à tarte, piquer le fond à la fourchette, verser la préparation du saladier, recouvrir de gruyère râpé."),
        Instr("Cuire au four à 200°C pendant ~35min"),
      ],
    ),
    Recipe(
      name: "Burger",
      asset: "burger.jpg",
      ingredientsQuantity: "pour 2 personnes",
      ingredients: [
        Ingredient("pains à burger", "2"),
        Ingredient("fromage à burger", "4 tranches"),
        Ingredient("steaks", "2"),
        Ingredient("salade", ""),
        Ingredient("tomate", "1"),
        Ingredient("ketchup", ""),
        Ingredient("mayo", ""),
      ],
      instructions: [
        Instr("Commencer par étaler les sauces de votre choix (un mélange ketchup/mayo pour ma part) sur vos deux moitiés de pain."),
        Instr("Recouvrir ensuite par une tranche de fromage pour chaque demi-pain."),
        Instr("Faire cuire les steaks et préchauffer le four pendant ce temps à 180°C."),
        Instr("On fera réchauffer les pains au four 3 à 5 minutes sur la fin du temps de cuisson des steaks."),
        Instr("Couper la tomates en fines tranches dans le sens de l'épaisseur."),
        Instr("Saler et poivrer les steaks en fin de cuisson et assembler le burger."),
        Instr("Ne pas oublier la salade !"),
      ],
    ),
    Recipe(
      name: "Bagnat",
      asset: "bagnat.jpg",
      ingredientsQuantity: "pour 2 personnes",
      ingredients: [
        Ingredient("pains bagnat", "2"),
        Ingredient("fromage blanc", "1"),
        Ingredient("ciboulette", ""),
        Ingredient("avocat", "1"),
        Ingredient("tomate", "1"),
        Ingredient("saumon fumé", ""),
      ],
      instructions: [
        Instr("Commencer par mélanger la ciboulette au fromage blanc."),
        Instr("Gouter pour s'assurer que le goût de ciboulette soit marqué mais pas omniprésent non plus."),
        Instr("Etaler la sauce ainsi créée sur vos demi-bagnats."),
        Instr("Couper la tomate finement dans l'épaisseur et faire de même avec l'avocat."),
        Instr("On pensera à mettre un filet de citron sur l'avocat pour empêcher qu'il ne noircisse."),
        Instr("Assembler le bagnat, sans oublier le saumon fumé, les doses sont en fonction des goûts !"),
      ],
    ),
    Recipe(
      name: "Risotto",
      asset: "risotto.jpg",
      ingredientsQuantity: "pour 2 personnes",
      ingredients: [
        Ingredient("riz", "150 à 200g"),
        Ingredient("huile", ""),
        Ingredient("oignons en poudre", "2 cuillères à soupe"),
        Ingredient("vin blanc", ""),
        Ingredient("parmesan", ""),
        Ingredient("gruyère râpé", ""),
        Ingredient("bouillon cube de poulet", "1"),
      ],
      instructions: [
        Instr("Mettre de l'huile dans une poêle, faire revenir les oignons."),
        Instr("Une fois bien dorés rajouter le riz et mélanger jusqu'à ce que tout le riz soit translucide."),
        Instr("Ajouter ensuite deux fois la quantité de riz en eau et le bouillon cube, le dissoudre et laisser cuire 10 minutes."),
        Instr("Une fois toute l'eau absorbée ajouter environ 15cl de vin blanc, un demi paquet de parmesan et deux poignées de gruyère râpé."),
        Instr("Mélanger régulièrement, quand tout l'alcool sera évaporé ça sera prêt."),
      ],
    ),
  ],
  // Boissons
  [
    Recipe(
      name: "Sangriananas",
      asset: "sangriananas.jpg",
      ingredientsQuantity: "pour 2 bouteilles",
      ingredients: [
        Ingredient("conserve d'ananas sans sucre ajouté", "560g"),
        Ingredient("cidre doux", "75cL"),
        Ingredient("Bourgogne Aligoté", "60cL"),
        Ingredient("vanille en poudre", "1/2 cuillère à café"),
        Ingredient("sirop de sucre de Canne ou cassonade", "8 cuillères à café"),
      ],
      instructions: [
        Instr("Couper l'ananas en petits cubes qui puissent passer le goulot de votre bouteille."),
        Instr("Mélanger tous les ingrédients ensemble dans un grand saladier."),
        Instr("Prendre soin de bien mélanger la vanille pour éviter les \"grumeaux\"."),
        Instr("Transvaser l'ensemble dans deux bouteilles y compris les morceaux d'ananas."),
        Instr("Laisser macérer ainsi au réfrigérateur pendant deux à trois jours avant de déguster bien frais."),
        Instr("À consommer dans la semaine après la fabrication."),
      ],
    ),
  ]
];
