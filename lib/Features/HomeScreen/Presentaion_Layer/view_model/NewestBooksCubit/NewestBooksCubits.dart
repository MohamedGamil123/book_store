import 'package:book_store/Features/HomeScreen/Data_Layer/Repos/Home_Repos.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view_model/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit( {this.homerepo}):super(NewestBooksLoading());
  final HomeRepo? homerepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    final nBooksL = await homerepo!.fetchNewestBooks();
    nBooksL.fold((failure) {
      emit(NewestBooksError(failure.message));
    }, (nBooks) {
      emit(NewestBooksSuccess(nBooks));
    });
  }
}
