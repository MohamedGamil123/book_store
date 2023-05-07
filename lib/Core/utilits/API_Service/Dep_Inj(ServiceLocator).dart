import 'package:book_store/Core/utilits/API_Service/Base_Api_service.dart';
import 'package:book_store/Features/HomeScreen/Data_Layer/Repos/Home_Repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerSingleton<Home_Repo_imp>(Home_Repo_imp(base_Api_Service: Base_Api_Service(dio: Dio())));

 
}