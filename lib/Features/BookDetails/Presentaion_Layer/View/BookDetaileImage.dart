import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BookWidget.dart';
import 'package:flutter/material.dart';

class BookDetaileImage extends StatelessWidget {
  const BookDetaileImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height * 0.32,
        child: BookWidget(
          imageUrl:"https://dcist.com/wp-content/uploads/sites/3/2022/12/IMG_7380-1500x1125.jpg" ,
          size: size,
        ));
  }
}
