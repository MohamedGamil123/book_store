import 'package:book_store/Features/HomeScreen/Data_Layer/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

class NewestBooksState extends Equatable {
  const NewestBooksState();
  @override
  List<Object?> get props => [];
}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksError extends NewestBooksState {
  final String errMessage;

  const NewestBooksError(this.errMessage);
}

class NewestBooksSuccess extends NewestBooksState {
  const NewestBooksSuccess(this.newbookList);
  final List<BookModel> newbookList;
}
