import 'package:book_store/Core/CustomWidgets/FailureWidget.dart';
import 'package:book_store/Core/CustomWidgets/LoadingWidget.dart';
import 'package:book_store/Features/HomeScreen/Data_Layer/models/book_model/book_model.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BookWidget.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view_model/FeaturdBookCubit/FeaturedBookCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_model/FeaturdBookCubit/FeaturedBookStates.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return BookWidget(
                  imageUrl:
                     state.fBookList[index].volumeInfo.imageLinks.thumbnail,
                  size: size,
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return LoadinWidget(
                size: size,
              );
            },
          );
        }
      },
    );
  }
}
