import 'package:book_store/Core/utilits/Constants/backgroundColor.dart';
import 'package:book_store/Features/HomeScreen/presentaion/view/HomeScreen.dart';
import 'package:book_store/Features/Splash/presentaion_layer/views/SplashViews/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith( scaffoldBackgroundColor: kprimaryColor),
         
        home: const HomeScreen());
  }
}
