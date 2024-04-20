import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RecipeWidget extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;

  const RecipeWidget({
    required this.title,
    required this.description,
    required this.imagePath,
    super.key
  });

  @override
  State<RecipeWidget> createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 140.0,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            // IMAGE
            Container(
              height: 140.0,
              width: 140.0,
              decoration:  BoxDecoration(
                color: Colors.grey[200],
                //color: const Color.fromARGB(255, 255, 228, 89),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: const Icon(Iconsax.cake, size: 50.0,), //Image.asset(widget.imagePath,),//
            ),
    
            // TITLE AND DESCRIPTION
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                    const SizedBox(height: 15.0,),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 15.0
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
        
      ),
    );
  }
}