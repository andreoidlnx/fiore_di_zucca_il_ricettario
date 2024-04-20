import 'package:fiore_di_zucca_il_ricettario/utils/constants.dart';
import 'package:fiore_di_zucca_il_ricettario/widgets/recipe_widget.dart';
import 'package:fiore_di_zucca_il_ricettario/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // APP BAR
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            //title: Text(Constants.appTitle),
            /* titleTextStyle: const TextStyle(
              letterSpacing: 1.0,
              fontSize: 20.0,
              color: Colors.black
            ), */
            expandedHeight: 300.0,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: const Color.fromARGB(255, 255, 228, 89),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(height: 2.0,),
                    Image.asset(
                      'lib/images/logo.png',
                      height: 120.0,
                      width: 120.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: SearchWidget(),
                    ),
                  ],
                ),
              )
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {}, 
                icon: const Icon(Iconsax.heart),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {}, 
                icon: const Icon(Iconsax.search_normal_1),
                color: Colors.black,
              ),
              const SizedBox(width: 10.0,),
            ],
          ),

          // BODY
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: RecipeWidget(title: "FIori di zucca in pastella", description: "Fritti e buonissimi", imagePath: "lib/images/logo.png",)
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}