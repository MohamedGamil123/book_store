import 'package:book_store/Core/utilits/Constants/Styles.dart';

import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/Rating_Widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  BestSellerItem({
    super.key,
    required this.size,
    required this.onTap,
    required this.imageUrl,
    required this.tittle,
    required this.authors,
  });
  final String tittle;
  final String imageUrl;
  final String authors;
  final Size size;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: size.height * 0.14,
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.6,
                        child: Text(
                          tittle,
                          style: Styles.textStyle18,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        authors,
                        style:
                            Styles.textStyle14.copyWith(color: Colors.white70),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Free",
                            style: Styles.textStyle14,
                          ),
                          Rating_Widget(
                            size: size,
                            mainAxisAlignment: MainAxisAlignment.end,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
