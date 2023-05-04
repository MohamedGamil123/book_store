import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Core/utilits/Constants/AppColors.dart';
import 'package:book_store/Features/SearchScreen/Presentaion_Layer/View/CustomTextField.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static String searchScreen = "SearchScreen";
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Search Book",
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              lableText: "Search Book",
              borderSideColor: kTextFeildBorderColor,
            )
          ]),
        ),
      ),
    );
  }
}
