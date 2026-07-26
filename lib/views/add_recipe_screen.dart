import 'package:flutter/material.dart';
import '../config/colors.dart';
import '../config/recipe_data.dart';
import '../model/recipe.dart';

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

  void saveRecipe(){
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
        content: Text(
          "Recipe Added Successfully 🍲",
        ),
      ),
    );
    nameController.clear();
    ingredientsController.clear();
    instructionsController.clear();
    timeController.clear();
    imageController.clear();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text(
          "Add Recipe",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: secondaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            recipeField(
              "Recipe Name",
              Icons.restaurant,
              nameController,
            ),
            recipeField(
              "Ingredients",
              Icons.shopping_basket,
              ingredientsController,
            ),
            recipeField(
              "Cooking Time",
              Icons.timer,
              timeController,
            ),
            recipeField(
              "Image URL",
              Icons.image,
              imageController,
            ),
            TextField(
              controller: instructionsController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Instructions",
                prefixIcon: const Icon(Icons.menu_book),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: saveRecipe,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Save Recipe",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget recipeField(
      String hint,
      IconData icon,
      TextEditingController controller,
      ){
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),

      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}