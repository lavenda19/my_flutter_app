import 'package:flutter/material.dart';
import '../config/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // IMAGE (same style as login)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://placehold.co/600x400/000000/FFFFFF/png",
                    height: 150,
                    width: 200,
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // FULL NAME
              Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: secondaryColor,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 15),

              // EMAIL
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: secondaryColor,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              const SizedBox(height: 15),

              // USERNAME
              Text(
                "Username",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: secondaryColor,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),

              const SizedBox(height: 15),

              // PASSWORD
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),

              const SizedBox(height: 15),

              // CONFIRM PASSWORD
              Text(
                "Confirm Password",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),

              const SizedBox(height: 25),

              // SIGN UP BUTTON
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  color: primaryColor,
                  height: 45,
                  minWidth: 200,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}