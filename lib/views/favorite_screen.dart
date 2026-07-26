import 'package:flutter/material.dart';
import '../config/recipe_data.dart';


class FavoriteScreen extends StatefulWidget {

  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();

}


class _FavoriteScreenState extends State<FavoriteScreen> {


  @override
  Widget build(BuildContext context) {


    final favoriteRecipes = recipes
        .where((recipe) => recipe.isFavorite)
        .toList();


    return Scaffold(

      backgroundColor: Colors.grey[100],


      appBar: AppBar(

        title: const Text(
          "Favorite Recipes ❤️",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,

        backgroundColor: Colors.red,

      ),



      body: favoriteRecipes.isEmpty

          ? const Center(

        child: Text(
          "No favorite recipes yet ❤️",
          style: TextStyle(
            fontSize: 18,
          ),
        ),

      )


          : ListView.builder(

        padding: const EdgeInsets.all(16),

        itemCount: favoriteRecipes.length,


        itemBuilder: (context,index){

          return Card(

            elevation: 5,

            child: ListTile(

              leading: Image.network(

                favoriteRecipes[index].image,

                width: 60,

                height: 60,

                fit: BoxFit.cover,

              ),


              title: Text(

                favoriteRecipes[index].name,

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),

              ),


              subtitle: Text(
                favoriteRecipes[index].time,
              ),


            ),

          );

        },

      ),


    );

  }

}