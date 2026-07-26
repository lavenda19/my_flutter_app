import 'package:flutter/material.dart';
import '../config/colors.dart';
import '../config/recipe_data.dart';
import 'recipe_details_screen.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text(
          "Recipe App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),


        backgroundColor: secondaryColor,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,


          children: [
            const Text(
              "Welcome 👋",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),
            Text(
              "Find your favourite recipes",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),

            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search recipes...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),


            const SizedBox(height: 20),
            const Text(
              "Popular Recipes",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,

              ),
            ),
            const SizedBox(height: 10),


    Expanded(
    child: ListView.builder(
    itemCount: recipes.length,
    itemBuilder: (context, index) {
    return Card(
    elevation: 5,
    margin: const EdgeInsets.only(bottom: 15),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    ),

    child: ListTile(
    contentPadding: const EdgeInsets.all(10),
    leading: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.network(
    recipes[index].image,
    width: 70,
    height: 70,
    fit: BoxFit.cover,
    ),
    ),

    title: Text(
    recipes[index].name,
    style: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    ),
    ),

    subtitle: Text(
    recipes[index].time,
    ),

    trailing: const Icon(
    Icons.favorite_border,
    color: Colors.red,
    ),

      onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetailsScreen(
              recipe: recipes[index],
            ),
          ),
        );

      },
    ),
    );
    },
    ),
    ),
          ],
        ),
      ),
    );
  }
}
