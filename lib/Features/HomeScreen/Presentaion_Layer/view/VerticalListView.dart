import 'package:book_store/Core/CustomWidgets/LoadingWidget.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_Screen.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/BestSellerItem.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view_model/NewestBooksCubit/NewestBooksCubits.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view_model/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            
            itemCount: 7,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return BestSellerItem(
                tittle: state.newbookList[index].volumeInfo.title,
                authors:  state.newbookList[index].volumeInfo.publisher?? state.newbookList[index].volumeInfo.authors![0].toString(),
                imageUrl:
                    state.newbookList[index].volumeInfo.imageLinks.thumbnail,
                size: size,
                onTap: () {
                  Navigator.of(context).pushNamed(Book_Details.book_Details);
                },
              );
            },
          );
        } else if (state is NewestBooksError) {
          return Center(child: Text(state.errMessage));
        } else {
          return ListView.builder(
            
            shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return LoadinWidget(
                 height: size.height * 0.14,
          width: double.infinity,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                size: size,
              );
            },
          );
        }
      },
    );
  }
}
