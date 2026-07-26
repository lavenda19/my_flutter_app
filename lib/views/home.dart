import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/add_recipe_screen.dart';
import 'package:my_flutter_app/views/dashboard.dart';
import 'package:my_flutter_app/views/recipe_details_screen.dart';

var screens=[
  Dashboard(),
  AddRecipeScreen(),
  RecipeDetailsScreen(),

];
int position=0;
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     bottomNavigationBar:CurvedNavigationBar(
       backgroundColor: Colors.blueAccent,
       items: <Widget>[
         Icon(Icons.home, size: 30),              // Dashboard/Home
         Icon(Icons.restaurant_menu, size: 30),   // Recipe Screen
         Icon(Icons.add_circle, size: 30),        // Add Recipe
        // Icon(Icons.person, size: 30),            // Profile
       ],
       onTap: (index) {
         //Handle button tap
         setState(() {
           position = index;
         });

       },
     ),
      body: screens[position],
    );
  }
}


