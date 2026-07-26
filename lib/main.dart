import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_flutter_app/views/login.dart';
import 'package:my_flutter_app/config/colors.dart';

import 'config/root.dart';

void main(){
  runApp(GradingApp());
}

class GradingApp extends StatefulWidget {
  const GradingApp({super.key});

  @override
  State<GradingApp> createState() => _GradingAppState();
}

class _GradingAppState extends State<GradingApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home:LoginScreen(),
      initialRoute: "/",
      getPages: routes,
    );
  }
}
