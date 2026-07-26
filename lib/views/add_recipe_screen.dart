import 'package:flutter/material.dart';
import '../config/colors.dart';
class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});
  @override
  State<AddRecipeScreen> createState() => _AddRecipeScreenState();
}
class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final recipeNameController = TextEditingController();
  final ingredientsController = TextEditingController();
  final instructionsController = TextEditingController();
  final timeController = TextEditingController();
  final imageController = TextEditingController();

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
        backgroundColor: secondaryColor,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            buildTextField(
              controller: recipeNameController,
              hint: "Recipe Name",
              icon: Icons.restaurant,
            ),
            const SizedBox(height: 15),
            buildTextField(
              controller: ingredientsController,
              hint: "Ingredients",
              icon: Icons.shopping_basket,
              maxLines: 3,
            ),
            const SizedBox(height: 15),
            buildTextField(
              controller: instructionsController,
              hint: "Cooking Instructions",
              icon: Icons.menu_book,
              maxLines: 4,
            ),
            const SizedBox(height: 15),
            buildTextField(
              controller: timeController,
              hint: "Cooking Time (minutes)",
              icon: Icons.timer,
            ),
            const SizedBox(height: 15),
            buildTextField(
              controller: imageController,
              hint: "Image URL",
              icon: Icons.image,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Recipe Saved Successfully"),
                    ),
                  );
                },
                child: const Text(
                  "Save Recipe",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  Widget buildTextField({

    required TextEditingController controller,

    required String hint,

    required IconData icon,

    int maxLines = 1,

  }){

    return TextField(

      controller: controller,

      maxLines: maxLines,


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

    );

  }

}