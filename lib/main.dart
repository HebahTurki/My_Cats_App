
import 'package:flutter/material.dart';
import 'package:my_cats_app/Screens/CatsHomeScreen.dart';
import 'package:my_cats_app/Screens/cat_details_screen.dart';
import 'package:my_cats_app/data/all_cats.dart';
import 'package:my_cats_app/data/model/cat.dart';


final cats = allCats.map<Cat>((jsonCat)=> Cat.fromJson(jsonCat)).toList();

void main() {

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: CatsHomeScreen(),
      );
  }
}
