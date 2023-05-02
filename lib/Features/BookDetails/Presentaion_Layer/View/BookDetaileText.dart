import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/Rating_Widget.dart';
import 'package:flutter/material.dart';

class BookDetaileText extends StatelessWidget {
  const BookDetaileText({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "the Jungle Book",
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: size.height * .01,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle20.copyWith(color: Colors.white70),
        ),
        SizedBox(
          height: size.height * .01,
        ),
        Rating_Widget(
          mainAxisAlignment: MainAxisAlignment.center,
          size: size,
        ),
      ],
    );
  }
}
