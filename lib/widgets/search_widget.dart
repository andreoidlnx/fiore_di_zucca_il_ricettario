import 'package:fiore_di_zucca_il_ricettario/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchWidget extends StatelessWidget {
  final bool soloVisual;
  const SearchWidget({required this.soloVisual, super.key});

  @override
  Widget build(BuildContext context) {
    return soloVisual ? GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SearchPage()),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.grey[200],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Iconsax.search_normal_1),
            SizedBox(width: 10.0,),
            Text("Cerca una ricetta", style: TextStyle(fontSize: 16.0),),
          ],
        )
      ),
    ) 
    :
    TextFormField(
      textAlign: TextAlign.center,
      cursorColor: Colors.black,
      style: const TextStyle(
        color: Colors.black
      ),
      decoration: InputDecoration(
        label: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Iconsax.search_normal_1),
            SizedBox(width: 10.0,),
            Text("Cerca una ricetta",),
          ],
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(50.0)
        ),
      ),
      textInputAction: TextInputAction.search, // Imposta l'azione del pulsante Invio sulla tastiera
      onFieldSubmitted: (value) {
        // Azioni da eseguire quando viene premuto il pulsante di ricerca sulla tastiera
        // In questo caso, puoi gestire la ricerca della ricetta
        // ad esempio, eseguendo una funzione di ricerca qui
        //searchRecipe(value);
      },
    );
  }
}