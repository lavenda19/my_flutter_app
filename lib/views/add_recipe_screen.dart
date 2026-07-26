import 'package:flutter/material.dart';
import '../model/recipe.dart';
import '../config/recipe_data.dart';

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});

  @override
  State<AddRecipeScreen> createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {

  final nameController = TextEditingController();
  final ingredientsController = TextEditingController();
  final instructionsController = TextEditingController();
  final timeController = TextEditingController();
  final imageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Add Recipe",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,

        backgroundColor: Colors.deepOrange,
      ),


      body: SingleChildScrollView(

        padding: const EdgeInsets.all(16),

        child: Column(

          children: [


            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Recipe Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),


            const SizedBox(height: 15),


            TextField(
              controller: ingredientsController,
              decoration: InputDecoration(
                labelText: "Ingredients",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),


            const SizedBox(height: 15),


            TextField(
              controller: instructionsController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Instructions",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),


            const SizedBox(height: 15),


            TextField(
              controller: timeController,
              decoration: InputDecoration(
                labelText: "Cooking Time",
                hintText: "Example: 30 minutes",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),


            const SizedBox(height: 15),


            TextField(
              controller: imageController,
              decoration: InputDecoration(
                labelText: "Image URL",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),


            const SizedBox(height: 25),


            SizedBox(

              width: double.infinity,

              child: ElevatedButton(

                onPressed: () {

                  Recipe newRecipe = Recipe(

                    name: nameController.text,

                    ingredients: ingredientsController.text,

                    instructions: instructionsController.text,

                    time: timeController.text,

                    image: imageController.text,

                  );


                  recipes.add(newRecipe);


                  ScaffoldMessenger.of(context).showSnackBar(

                    const SnackBar(

                      content: Text("Recipe Added Successfully"),

                    ),

                  );


                  nameController.clear();
                  ingredientsController.clear();
                  instructionsController.clear();
                  timeController.clear();
                  imageController.clear();

                },


                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.deepOrange,

                  padding: const EdgeInsets.all(15),

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(15),

                  ),

                ),


                child: const Text(

                  "Save Recipe",

                  style: TextStyle(

                    color: Colors.white,

                    fontSize: 18,

                  ),

                ),

              ),

            )

          ],

        ),

      ),

    );
  }
}