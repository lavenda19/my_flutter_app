import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../config/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   //get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grading Application"),
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        centerTitle: true,
        actions:  [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Image.network(
                    "https://placehold.co/600x400/000000/FFFFFF/png",
                    height: 150,
                    width: 200,
                  ),]
            ),
            Text(
              "Username",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: secondaryColor,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Password",
              style:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: secondaryColor,
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Get.toNamed("/home");
                  },
                  color: primaryColor,
                  height: 45,
                  minWidth: 200,
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 20),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
        child: Text(
          "Not Registered? Sign Up",
          style: TextStyle(color: secondaryColor),
        ),
          onTap: (){
          //code to navigate to registration page
            Get.toNamed("/register");
          },
        ),
    Spacer(),
        Text(
          "Forgot Password? Reset",
          style: TextStyle(color: secondaryColor),
        ),
        ]
    ),
        ]
    ),
    ),
    );
  }
}