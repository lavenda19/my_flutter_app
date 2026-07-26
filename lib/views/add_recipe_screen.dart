import 'package:flutter/material.dart';

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});

  @override
  State<AddRecipeScreen> createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Text(
        "Add Recipe",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    );
  }
}
