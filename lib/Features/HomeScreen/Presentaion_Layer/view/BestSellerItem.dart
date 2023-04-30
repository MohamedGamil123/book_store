import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Core/utilits/assetsManager/assets.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/Rating_Widget.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  BestSellerItem({
    super.key,
    required this.size,
    required this.onTap,
  });

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
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.grey,
                      //       blurRadius: 10,
                      //       offset: Offset(2, 2),
                      //       spreadRadius: -3)
                      // ],
                      // gradient: LinearGradient(
                      //   colors: [Colors.white, Colors.black54],
                      //   begin: Alignment.topCenter,
                      //   end: Alignment.bottomCenter,
                      //   stops: [0.2, 0.7],
                      // ),
                      image: DecorationImage(
                        // opacity: 0.6,
                        image:
                            AssetImage(AsstetsManager.bestSellerbookbackground),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: const SizedBox()),
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
                        child: const Text(
                          "Harry Potter and the Goblet of Fire ",
                          style: Styles.textStyle20,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                       Text(
                        "J.K. Rowling",
                        style: Styles.textStyle14.copyWith(color: Colors.white70),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "19.99 " r"$",
                            style: Styles.textStyle16,
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
