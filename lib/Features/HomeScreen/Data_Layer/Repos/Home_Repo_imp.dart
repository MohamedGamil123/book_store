import 'package:book_store/Core/utilits/API_Service/Base_Api_service.dart';
import 'package:book_store/Core/utilits/API_Service/Errors/Failures.dart';
import 'package:book_store/Features/HomeScreen/Data_Layer/Repos/Home_Repos.dart';
import 'package:dartz/dartz.dart';
import 'package:book_store/Features/HomeScreen/Data_Layer/models/book_model/book_model.dart';
import 'package:dio/dio.dart';

class Home_Repo_imp implements HomeRepo {
  final Base_Api_Service? base_Api_Service;

  Home_Repo_imp({this.base_Api_Service});
 @override
  Future<Either<Failure, List<BookModel>>> fetchFeatcherdBooks() async {
    try {
      var data = await base_Api_Service!
          .getResponse(endPoint: "volumes?q=الكون&Filtering=free-ebooks&orderBy=newest");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        print("dio error");
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await base_Api_Service!.getResponse(
          endPoint: "volumes?q=العقل&Filtering=free-ebooks&orderBy=newest");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(message: e.toString()));
    }
  }

 
}
