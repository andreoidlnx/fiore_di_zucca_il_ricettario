import 'package:fiore_di_zucca_il_ricettario/model/recipe.dart';
import 'package:fiore_di_zucca_il_ricettario/widgets/favourite_recipe_widget.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {

  List<Recipe> favouriteRecipeList=[
    Recipe(title: "Fiori di zucca in pastella", description: "Fritti e buonissimi", imagePath: ""),
    Recipe(title: "Pasta al forno", description: "Che dire!", imagePath: ""),
    Recipe(title: "Pipi e patate", description: "Tanto olioooo", imagePath: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ricette preferite"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: List.generate(
            favouriteRecipeList.length, 
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: FavouriteRecipeWidget(recipe: favouriteRecipeList[index]),
            ),
          )
        )
      ),
    );
  }
}