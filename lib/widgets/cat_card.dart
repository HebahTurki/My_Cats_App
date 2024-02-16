import 'package:flutter/material.dart';
import 'package:my_cats_app/Screens/cat_details_screen.dart';
import 'package:my_cats_app/data/model/cat.dart';
import 'package:google_fonts/google_fonts.dart';

class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({
    super.key, required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(
        child: Column(
        children: [
          // cat image
          Expanded(
            child: Image.network(
              width: double.infinity,
              fit: BoxFit.cover,
              cat.imageLink
              )
            ),
          // cat name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(cat.name, 
            textAlign: TextAlign.center,
            style: 
            TextStyle(fontSize: 16, 
            fontWeight: 
            FontWeight.bold,
            fontFamily: "Protest_Riot",
            color: Colors.deepPurple),
            ),
          ),
        ],
      )),
    );
  }
}