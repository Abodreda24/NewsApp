

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';
import 'package:news_app/mainsc.dart';

class Explore_1 extends StatelessWidget {
  const Explore_1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        var newscubit1 = BlocProvider.of<NewsCubit>(context);
        return Scaffold(
          backgroundColor: Color.fromARGB(213, 238, 241, 255),
          body: Container(
            width: double.infinity.w,
            height: double.infinity.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Welcome.png"),
                  fit: BoxFit.fill),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 421.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32.r),
                          topLeft: Radius.circular(32.r))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                              "Get The Latest News And Updates",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                            "From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.",
                            style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.cyan,)),
                          onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
            );
                          },
                          child: Container(
                            height: 40.h,
                            width: 80.w,
                            color: Colors.cyan,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 13.w,
                                ),
                                Text("Explore",style: TextStyle(color: Colors.white)),
                                Icon(Icons.arrow_right,color: Colors.white,)
                              ],
                            ),
                          ))
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
