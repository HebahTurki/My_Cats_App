import 'package:flutter/material.dart';
import 'package:my_cats_app/data/model/cat.dart';

class CatDetailsWidget extends StatelessWidget {
  final Cat cat;
  const CatDetailsWidget({
    super.key, required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // cat image
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.network(cat.imageLink),
        ),
        // cat name
        Text(cat.name, style: TextStyle(fontSize: 32, 
        fontWeight: FontWeight.bold,
        fontFamily: "Protest_Riot",
        ),
        ),
        // cat info
        Text("Origin: ${cat.origin}"),
        Text("Max Weight: ${cat.maxWeight}"),
        Text("Min Weight: ${cat.minWeight}"),
        Text("Length: ${cat.length}"),
        Text("Intelligence: ${cat.intelligence}"),
      ],
    );
  }
}