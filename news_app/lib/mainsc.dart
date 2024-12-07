
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        var mainCubit=BlocProvider.of<NewsCubit>(context);
        return Scaffold(
          body:mainCubit.screens[mainCubit.currentIndex],
          bottomNavigationBar: SalomonBottomBar(
            onTap: (value) {
              mainCubit.changeIndex(value);
            },
            curve: Easing.standard,
            currentIndex: mainCubit.currentIndex,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            

              items:mainCubit.items,
          ),
        );
      },
    );
  }
}
