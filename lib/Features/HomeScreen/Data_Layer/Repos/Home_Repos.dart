import 'package:book_store/Core/utilits/API_Service/Errors/Failures.dart';
import 'package:book_store/Features/HomeScreen/Data_Layer/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeatcherdBooks();
}
