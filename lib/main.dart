import 'package:book_store/Core/utilits/Constants/backgroundColor.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_Screen.dart';

import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/HomeScreen.dart';
import 'package:book_store/Features/Splash/Presentaion_Layer/views/SplashViews/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          HomeScreen.homeScreen: (context) => const HomeScreen(),
          Book_Details.book_Details: (context) => const Book_Details(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        home: const splashScreen());
  }
}
