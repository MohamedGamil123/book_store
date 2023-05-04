import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Core/utilits/assetsManager/assets.dart';
import 'package:book_store/Features/SearchScreen/Presentaion_Layer/View/SearchScreen.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Book Haven", style: Styles.appName),
          InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(SearchScreen.searchScreen);
              },
              child: Image.asset(AsstetsManager.searchIconLight, height: 35)),
        ],
      ),
    );
  }
}
