import 'package:fiore_di_zucca_il_ricettario/pages/favourite_page.dart';
import 'package:fiore_di_zucca_il_ricettario/pages/search_page.dart';
import 'package:fiore_di_zucca_il_ricettario/widgets/recipe_widget.dart';
import 'package:fiore_di_zucca_il_ricettario/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../model/recipe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  bool _isAppBarExpanded = true;

  List<Recipe> recipeList=[
    Recipe(title: "Fiori di zucca in pastella", description: "Fritti e buonissimi", imagePath: ""),
    Recipe(title: "Pasta al forno", description: "Che dire!", imagePath: ""),
    Recipe(title: "Pipi e patate", description: "Tanto olioooo", imagePath: ""),
    Recipe(title: "Pipi e patate", description: "Tanto olioooo", imagePath: ""),
    Recipe(title: "Pipi e patate", description: "Tanto olioooo", imagePath: ""),
    Recipe(title: "Pipi e patate", description: "Tanto olioooo", imagePath: ""),
    Recipe(title: "Pipi e patate", description: "Tanto olioooo", imagePath: ""),
    Recipe(title: "Pipi e patate", description: "Tanto olioooo", imagePath: ""),
  ];

  @override
  Widget build(BuildContext context) {

    _scrollController.addListener(() {
      setState(() {
        const double maxExtent = 300.0;
        final double minExtent = kToolbarHeight + MediaQuery.of(context).padding.top;

        _isAppBarExpanded = _scrollController.hasClients &&
            _scrollController.offset < (maxExtent - minExtent);
      });
    });

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // APP BAR
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 300.0,
            elevation: 0.0,
            title: !_isAppBarExpanded ? 
            Image.asset(
              "lib/images/logo_no_bg.png",
              width: 40.0,
              height: 40.0,
            ) : null,
            //  backgroundColor: const Color.fromARGB(255, 254, 231, 118),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: const Color.fromARGB(255, 254, 231, 118),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const SizedBox(height: 2.0,),
                    Image.asset(
                      'lib/images/logo_no_bg.png',
                      height: 120.0,
                      width: 120.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: SearchWidget(soloVisual: true,),
                    ),
                  ],
                ),
              )
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavouritePage()),
                ), 
                icon: const Icon(Iconsax.heart),
                color: Colors.black,
                iconSize: 27.0,
              ),
              !_isAppBarExpanded ? IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                ), 
                icon: const Icon(Iconsax.search_normal_1),
                color: Colors.black,
                iconSize: 27.0,
              ) : const SizedBox.shrink(),
              const SizedBox(width: 10.0,),
            ],
          ),

          // BODY
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RecipeWidget(recipe: recipeList[index],),
                );
              },
              childCount: recipeList.length,
            ),
          ),

        ],
      ),
    );
  }
}