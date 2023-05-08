import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/AnimatedAppBar.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/FeaturedListView.dart';

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
  void dispose() {
    scrollcontroller.dispose();
    super.dispose();
  }

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
        body: ListView(
      physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast),
      controller: scrollcontroller,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedAppBar(appBarHeight: appBarHeight),
            SizedBox(
                height: size.height * 0.3,
                child: FeaturedListView(
                  size: size,
                )),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "New Books",
                style: Styles.textStyle20,
              ),
            ),
            VerticalListView(
              size: size,
            )
          ],
        ),
      ],
    ));
  }
}
