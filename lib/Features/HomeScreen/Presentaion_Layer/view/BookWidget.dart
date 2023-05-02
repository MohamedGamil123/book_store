import 'package:book_store/Core/utilits/assetsManager/assets.dart';
import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 3 / 5,
        child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                    spreadRadius: -3)
              ],
              // gradient: LinearGradient(
              //   colors: [Colors.white, Colors.black54],
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   stops: [0.2, 0.7],
              // ),
              image: DecorationImage(
                // opacity: 0.6,
                image: AssetImage(AsstetsManager.bookbackground),
                fit: BoxFit.fill,
              ),
            ),
            child: const SizedBox()),
      ),
    );
  }
}
