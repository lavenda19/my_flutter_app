import 'package:flutter/material.dart';
import '../model/recipe.dart';


class RecipeDetailsScreen extends StatefulWidget {

  final Recipe recipe;


  const RecipeDetailsScreen({
    super.key,
    required this.recipe,
  });


  @override
  State<RecipeDetailsScreen> createState() =>
      _RecipeDetailsScreenState();

}


class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text(
          widget.recipe.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        backgroundColor: Colors.deepOrange,

        centerTitle: true,

      ),


      body: SingleChildScrollView(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [


            Image.network(

              widget.recipe.image,

              width: double.infinity,

              height: 250,

              fit: BoxFit.cover,

            ),



            Padding(

              padding: const EdgeInsets.all(16),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  Text(

                    widget.recipe.name,

                    style: const TextStyle(

                      fontSize: 28,

                      fontWeight: FontWeight.bold,

                    ),

                  ),



                  const SizedBox(height: 10),



                  Text(

                    "⏱ Cooking Time: ${widget.recipe.time}",

                    style: const TextStyle(

                      fontSize: 16,

                    ),

                  ),



                  const SizedBox(height: 20),



                  const Text(

                    "Ingredients",

                    style: TextStyle(

                      fontSize: 22,

                      fontWeight: FontWeight.bold,

                    ),

                  ),



                  Text(

                    widget.recipe.ingredients,

                    style: const TextStyle(

                      fontSize: 16,

                    ),

                  ),



                  const SizedBox(height: 20),



                  const Text(

                    "Instructions",

                    style: TextStyle(

                      fontSize: 22,

                      fontWeight: FontWeight.bold,

                    ),

                  ),



                  Text(

                    widget.recipe.instructions,

                    style: const TextStyle(

                      fontSize: 16,

                    ),

                  ),


                ],

              ),

            ),

          ],

        ),

      ),

    );

  }

}