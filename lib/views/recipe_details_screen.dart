import 'package:flutter/material.dart';
import '../config/colors.dart';
class RecipeDetailsScreen extends StatefulWidget {
  const RecipeDetailsScreen({super.key});
  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}
class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Recipe Details",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: secondaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe image
            Image.network(
              "https://images.unsplash.com/photo-1603894584373-5ac82b2ae398",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Chicken Curry",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(
                        Icons.timer,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "30 minutes",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "• Chicken\n"
                        "• Onion\n"
                        "• Tomatoes\n"
                        "• Spices\n"
                        "• Cooking oil",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Cooking Instructions",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "1. Prepare all ingredients.\n"
                        "2. Cook onions and spices.\n"
                        "3. Add chicken and cook well.\n"
                        "4. Serve while hot.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
