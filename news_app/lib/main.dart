import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Bookmars/bookMark.dart';
import 'package:news_app/Bookmars/bookmark2.dart';
import 'package:news_app/Explore/SearchResults.dart';
import 'package:news_app/Explore/cubit/explo_r_cubit.dart';
import 'package:news_app/Explore/explor.dart';
import 'package:news_app/Explore/search.dart';
import 'package:news_app/Home/Explore_1.dart';
import 'package:news_app/Home/SplashSc.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';
import 'package:news_app/Home/home.dart';
import 'package:news_app/mainsc.dart';
import 'package:news_app/profile/MyAccount.dart';
import 'package:news_app/profile/ReadArticles.dart';
import 'package:news_app/profile/profile1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => NewsCubit()
                    ..fatchDAta()
                    ..fatchDataExplore("business")
                    ..fatchDatajust()
                    ..fatchDAtabook(),
                ),
                BlocProvider(
                  create: (context) => ExploRCubit()..fatchDAtaSh(""),
                )
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData.light(useMaterial3: true),
                initialRoute: '/splas',
                routes: {
                  '/splas': (context) => splas(),
                  '/Explore_1': (context) => Explore_1(),
                  '/screnc': (context) => Home(),
                  '/MainScreen': (context) => MainScreen(),
                  '/search': (context) => search(),
                  '/explor': (context) => explor(),
                  '/SearchResults': (context) => SearchResults(),
                  '/book1': (context) => bookMark(),
                  '/book2': (context) => bookmark2(),
                  '/profile': (context) => profile(),
                  '/ReadArticles': (context) => ReadArticles(),
                  '/MyAccount': (context) => MyAccount(),
                },
              ));
        });
  }
}
