import 'package:book_store/Features/HomeScreen/presentaion/view/BookWidget.dart';
import 'package:book_store/Features/HomeScreen/presentaion/view/HomeAppBar.dart';
import 'package:book_store/Features/HomeScreen/presentaion/view/HorizontalListView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const HomeAppBar(),
          HorizontalListView(size: size),
        ],
      )),
    );
  }
}

