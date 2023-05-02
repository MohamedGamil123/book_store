import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_Screen.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/AnimatedAppBar.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BookWidget.dart';

import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/HorizontalListView.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/VerticalListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  static String homeScreen = "homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollcontroller = ScrollController();
  double appBarHeight = kToolbarHeight;
  @override
  Widget build(BuildContext context) {
    scrollcontroller.addListener(
      () {
        if (scrollcontroller.position.userScrollDirection ==
            ScrollDirection.reverse) {
          setState(() {
            appBarHeight = 0;
          });
        }
        if (scrollcontroller.position.userScrollDirection ==
            ScrollDirection.forward) {
          setState(() {
            appBarHeight = kToolbarHeight;
          });
        }
      },
    );
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedAppBar(appBarHeight: appBarHeight),
          Expanded(
            child: ListView(
              controller: scrollcontroller,
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              children: [
                HorizontalListView(
                  size: size,
                  widget: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Book_Details.book_Details);
                    },
                    child: BookWidget(
                      size: size,
                    ),
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
                VerticalListView(size: size),
              ],
            ),
          )
        ],
      )),
    );
  }
}
