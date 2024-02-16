import 'package:flutter/material.dart';
import 'package:my_cats_app/main.dart';
import 'package:my_cats_app/widgets/cat_card.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cats", 
        style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
        ),
        ),
        backgroundColor: const Color.fromARGB(214, 104, 58, 183) ,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.white))],
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: cats.length,
      itemBuilder: (context, index) {
        final cat = cats[index];
        return CatCard(cat: cat,);
      }
      )
    );
  }
}
