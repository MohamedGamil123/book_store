import 'package:book_store/Features/HomeScreen/Data_Layer/models/book_model/book_model.dart';

abstract class NewestBooksInitState {
  const NewestBooksInitState();
}

class NewestBooksLoading extends NewestBooksInitState {}

class NewestBooksError extends NewestBooksInitState {
  final String errMessage;

  const NewestBooksError(this.errMessage);
}

class NewestBooksSuccess extends NewestBooksInitState {
  const NewestBooksSuccess(this.newbookList);
  final List<BookModel> newbookList;
}
