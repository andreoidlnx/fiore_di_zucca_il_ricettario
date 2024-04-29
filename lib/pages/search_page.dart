import 'package:fiore_di_zucca_il_ricettario/model/recipe.dart';
import 'package:fiore_di_zucca_il_ricettario/widgets/search_widget.dart';
import 'package:fiore_di_zucca_il_ricettario/widgets/suggested_recipe_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List<Recipe> suggestedRecipeList=[
    Recipe(title: "Fiori di zucca in pastella", description: "Fritti e buonissimi", imagePath: ""),
    Recipe(title: "Pasta al forno", description: "Che dire!", imagePath: ""),
    Recipe(title: "Pipi e patate", description: "Tanto olioooo", imagePath: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cerca una ricetta"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          letterSpacing: 1.0,
          fontSize: 20.0,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0,),
            
            // CERCA
            const SearchWidget(soloVisual: false),

            // A LITTLE SPACE
            const SizedBox(height: 40.0,),

            const Text("Suggeriti:", style: TextStyle(letterSpacing: 1.0, fontStyle: FontStyle.italic),),

            const SizedBox(height: 10.0,),

            // SUGGERITI
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                suggestedRecipeList.length, 
                (index) => SuggestedRecipeWidget(recipe: suggestedRecipeList[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}