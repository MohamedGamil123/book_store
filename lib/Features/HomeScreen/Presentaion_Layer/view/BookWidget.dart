import 'package:book_store/Core/utilits/assetsManager/assets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    required this.size,
    required this.imageUrl,
  });
  final String imageUrl;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(blurRadius: 9, offset: Offset(4, 3), color: Colors.grey ,spreadRadius: -9)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 3 / 5,
          child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
