import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_Screen.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BookWidget.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/HomeAppBar.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/HorizontalListView.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/VerticalListView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String homeScreen = "homeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppBar(),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              children: [
                HorizontalListView(
                  size: size,
                  widget: BookWidget(
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Book_Details.book_Details);
                    },
                  ),
                  isHomeScreen: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle18,
                  ),
                ),
                Expanded(
                  child: VerticalListView(size: size),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
