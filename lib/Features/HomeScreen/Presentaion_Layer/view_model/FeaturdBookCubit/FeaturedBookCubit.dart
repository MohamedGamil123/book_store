import 'package:book_store/Features/HomeScreen/Data_Layer/Repos/Home_Repos.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view_model/FeaturdBookCubit/FeaturedBookStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homerepo}) : super(FeaturedBooksLoading());
  final HomeRepo homerepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    final fList = await homerepo.fetchFeatcherdBooks();
    fList.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (fBooks) {
      emit(FeaturedBooksSuccess(fBooks));
    });
  }
}
