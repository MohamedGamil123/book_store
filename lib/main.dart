import 'package:book_store/Core/utilits/API_Service/Base_Api_service.dart';
import 'package:book_store/Core/utilits/API_Service/Dep_Inj(ServiceLocator).dart';
import 'package:book_store/Core/utilits/Constants/AppColors.dart';
import 'package:book_store/Features/BookDetails/Presentaion_Layer/View/Book_Details_Screen.dart';
import 'package:book_store/Features/HomeScreen/Data_Layer/Repos/Home_Repo_imp.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view/HomeScreen.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view_model/FeaturdBookCubit/FeaturedBookCubit.dart';
import 'package:book_store/Features/HomeScreen/Presentaion_Layer/view_model/NewestBooksCubit/NewestBooksCubits.dart';
import 'package:book_store/Features/SearchScreen/Presentaion_Layer/View/SearchScreen.dart';
import 'package:book_store/Features/Splash/Presentaion_Layer/views/SplashViews/splashScreen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: kprimaryColor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              FeaturedBooksCubit(homerepo: Home_Repo_imp(base_Api_Service: Base_Api_Service(dio: Dio())))..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (_) =>
              NewestBooksCubit(homerepo: Home_Repo_imp(base_Api_Service: Base_Api_Service(dio: Dio())))..fetchNewestBooks(),
        )
      ],
      child: MaterialApp(
          routes: {
            HomeScreen.homeScreen: (context) => const HomeScreen(),
            Book_Details.book_Details: (context) => const Book_Details(),
            SearchScreen.searchScreen: (context) => const SearchScreen()
          },
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          home: const splashScreen()),
    );
  }
}
