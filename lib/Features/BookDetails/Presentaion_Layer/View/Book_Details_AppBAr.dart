import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Book_Details_AppBAr extends StatelessWidget {
  const Book_Details_AppBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          IconButton(icon: const Icon(IconlyLight.buy), onPressed: () {}),
        ],
      ),
    );
  }
}
