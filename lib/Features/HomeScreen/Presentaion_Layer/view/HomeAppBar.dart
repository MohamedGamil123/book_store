import 'package:book_store/Core/utilits/assetsManager/assets.dart';
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
          const Text(
            "Book Haven",
            style: TextStyle(
                color: Colors.white ,
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          Image.asset(AsstetsManager.searchIconLight, height: 35),
        ],
      ),
    );
  }
}
