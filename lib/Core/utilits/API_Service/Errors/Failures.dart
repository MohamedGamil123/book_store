import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure(message: "ConnectionTimeout with Api server");

      case DioErrorType.sendTimeout:
        return ServerFailure(message: "sendTimeout with Apiserver");

      case DioErrorType.receiveTimeout:
        return ServerFailure(message: "receiveTimeout with Apiserver");

      case DioErrorType.badCertificate:
        return ServerFailure(message: "badCertificate ApiServer");

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            response: dioError.response!.data,
            statusCode: dioError.response!.statusCode!);

      case DioErrorType.cancel:
        return ServerFailure(message: "Connction with ApiServer was canceled");

      case DioErrorType.connectionError:
        return ServerFailure(message: "connectionError with ApiServer");

      case DioErrorType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure(
              message:
                  "SocketException :No internet connection , check out connection and try again");
        }
        return ServerFailure(
            message: "Oops there was an erroe, please try again later");
    }
  }
  factory ServerFailure.fromResponse({int? statusCode, dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          message: "Your request not found, please try again later");
    } else if (statusCode == 500) {
      return ServerFailure(
          message: "Oops there was an erroe, please try again later");
    } else {
      return ServerFailure(
          message: "Oops there was an erroe, please try again later");
    }
  }
}
