import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../model/recipe.dart';

class FavouriteRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const FavouriteRecipeWidget({
    required this.recipe,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 300.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey[300],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // IMAGE
            Container(
              height: 180.0,
              width: double.infinity,
              decoration:  BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: const Icon(Iconsax.cake, size: 50.0,), //Image.asset(widget.imagePath,),//
            ),
      
            // TITLE AND DESCRIPTION
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 15, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      recipe.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                    const SizedBox(height: 12.0,),
                    Text(
                      recipe.description,
                      style: const TextStyle(
                        fontSize: 15.0
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
    
      ),
    );
  }
}