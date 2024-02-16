import 'package:flutter/material.dart';
import 'package:my_cats_app/data/model/cat.dart';
import 'package:my_cats_app/widgets/cat_details.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name, style: TextStyle(
          color: Colors.white, 
          fontWeight: FontWeight.bold,
          
        ),
        ),
        backgroundColor: const Color.fromARGB(214, 104, 58, 183),
        ),
      body: CatDetailsWidget(cat: cat,),
    );
  }
}

