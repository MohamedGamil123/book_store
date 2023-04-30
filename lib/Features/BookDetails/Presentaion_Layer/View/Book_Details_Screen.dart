import 'package:book_store/Core/utilits/Constants/Styles.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_AppBAr.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/ContainerWithCenterText.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BookWidget.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/HorizontalListView.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/Rating_Widget.dart';
import 'package:flutter/material.dart';

class Book_Details extends StatelessWidget {
  static const String book_Details = "Book_Details";
  const Book_Details({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Book_Details_AppBAr(),
          SizedBox(
              height: size.height * 0.32,
              child: BookWidget(
                size: size,
                onTap: () {
                  Navigator.of(context).pushNamed(Book_Details.book_Details);
                },
              )),
          SizedBox(
            height: size.height * .02,
          ),
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
          SizedBox(
            height: size.height * .04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            child: Row(children: [
              ContainerWithCenterText(
                size: size,
                color: Colors.white,
                isWhiteContainer: true,
                widget: Text(
                  "19.99" r"$",
                  style: Styles.textStyle18.copyWith(color: Colors.black),
                ),
              ),
              ContainerWithCenterText(
                size: size,
                color: Colors.orange,
                isWhiteContainer: false,
                widget: const Text(
                  "Free Preview",
                  style: Styles.textStyle18,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: size.height * .07,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: const Text(
                  "You can also like",
                  style: Styles.textStyle16,
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: HorizontalListView(
                  isHomeScreen: false,
                  size: size,
                  widget: BookWidget(
                    size: size,
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Book_Details.book_Details);
                    },
                  )),
            ),
          )
        ],
      )),
    );
  }
}
