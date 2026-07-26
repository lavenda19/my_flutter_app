import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_flutter_app/views/home.dart';
import 'package:my_flutter_app/views/login.dart';
import 'package:my_flutter_app/views/registration.dart';

var routes =[
   GetPage(name: "/",page: ()=>LoginScreen()),
   GetPage(name: "/register", page:()=>RegistrationScreen()),
   GetPage(name: "/home", page: ()=>HomeScreen()),
];
