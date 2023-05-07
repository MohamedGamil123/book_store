import 'package:book_store/Core/utilits/assetsManager/assets.dart';
import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
   BookWidget({
    super.key,
    required this.size,
    required this.imageUrl,
    
  });
  final String imageUrl;
  final Size size;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 3 / 5,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              boxShadow: const [
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
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
            ),
            child: const SizedBox()),
      ),
    );
  }
}
