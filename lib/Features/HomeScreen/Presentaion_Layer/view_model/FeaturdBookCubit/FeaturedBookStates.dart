import 'package:book_store/Features/HomeScreen/Data_Layer/models/book_model/book_model.dart';

abstract class FeaturedBooksInitState {
  const FeaturedBooksInitState();
}

class FeaturedBooksLoading extends FeaturedBooksInitState {}

class FeaturedBooksSuccess extends FeaturedBooksInitState {
  final List<BookModel> fBookList;
  const FeaturedBooksSuccess(this.fBookList);
}

class FeaturedBooksFailure extends FeaturedBooksInitState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}
