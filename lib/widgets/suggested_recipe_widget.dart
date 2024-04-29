import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../model/recipe.dart';

class SuggestedRecipeWidget extends StatelessWidget {
  final Recipe recipe;
  
  const SuggestedRecipeWidget({required this.recipe, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8.0)
          ),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                recipe.title,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                ),
              ),
              Icon(Iconsax.arrow_right_1, color: Colors.grey[700],),
            ],
          ),
        ),
      ),
    );
  }
}