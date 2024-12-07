import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Home/Article.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';
import 'package:news_app/Home/homecontenar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        var mainCubit = BlocProvider.of<NewsCubit>(context);
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: state is fetchdataa
              ? CircularProgressIndicator()
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                        height: 130.h,
                        width: 370.w,
                        child: Row(children: [
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Container(
                              height: 100.h,
                              width: 200.w,
                              color: Color.fromARGB(221, 255, 255, 255),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Good Morning,",
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontSize: 15.sp)),
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text("Trung",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 15.sp))),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: Text("Sun 9 April,2023",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 0, 0, 0),
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.bold)))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 19.w,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.sunny,
                                color: Color.fromARGB(255, 245, 132, 3),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Sunny 32`C",
                                style: TextStyle(
                                    color: Color.fromARGB(150, 43, 41, 41)),
                              )
                            ],
                          )
                        ]),
                      ),
                      SizedBox(
                          height: 300.h,
                          child: ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Article(
                                              imag: mainCubit.newsData[index]
                                                      .urlToImage ??
                                                  'https://i.imgur.com/QkIa5tT.jpeg',
                                              title: mainCubit
                                                      .newsData[index].title ??
                                                  '',
                                              descreption: mainCubit
                                                      .newsData[index]
                                                      .content ??
                                                  '',
                                              auther: mainCubit
                                                      .newsData[index].author ??
                                                  '',
                                              createdAt: mainCubit
                                                      .newsData[index]
                                                      .publishedAt ??
                                                  '')));
                                },
                                child: homecontenar(
                                  auter: mainCubit.newsData[index].author ?? '',
                                  imagee:
                                      mainCubit.newsData[index].urlToImage ??
                                          'https://i.imgur.com/QkIa5tT.jpeg',
                                  tital: mainCubit.newsData[index].title ?? '',
                                )),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 10.w,
                            ),
                            itemCount: mainCubit.newsData.length,
                            scrollDirection: Axis.horizontal,
                          ))
                      // Column(
                      //   children: [
                      //     SingleChildScrollView(
                      //       scrollDirection: Axis.horizontal,
                      //       child: Row(
                      //         children: [
                      //           GestureDetector(
                      //             onTap: () {  Navigator.pushNamed(context, '/Article');},
                      //             child: homecontenar(),
                      //           ),
                      //           GestureDetector(
                      //             onTap: () {Navigator.pushNamed(context, '/Article');},
                      //             child: homecontenar(),
                      //           ),
                      //           GestureDetector(
                      //             onTap: () {Navigator.pushNamed(context, '/Article');},
                      //             child: homecontenar(),
                      //           ),
                      //           GestureDetector(
                      //             onTap: () {Navigator.pushNamed(context, '/Article');},
                      //             child: homecontenar(),
                      //           ),
                      //           GestureDetector(
                      //             onTap: () {Navigator.pushNamed(context, '/Article');},
                      //             child: homecontenar(),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      ,
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Just For You",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 100.w,
                          ),
                          TextButton(
                              onPressed: () {
                                mainCubit.fatchDAta();
                              },
                              child: Text(
                                "See More",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Color.fromARGB(255, 13, 0, 196)),
                              ))
                        ],
                      ),
                      SizedBox(
                          height: 300.h,
                          width: double.infinity,
                          child: ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Article(
                                              imag: mainCubit.newsDataJust[index]
                                                      .urlToImage ??
                                                  'https://i.imgur.com/QkIa5tT.jpeg',
                                              title: mainCubit
                                                      .newsDataJust[index].title ??
                                                  '',
                                              descreption: mainCubit
                                                      .newsDataJust[index]
                                                      .content ??
                                                  '',
                                              auther: mainCubit
                                                      .newsDataJust[index].author ??
                                                  '',
                                              createdAt: mainCubit
                                                      .newsDataJust[index]
                                                      .publishedAt ??
                                                  '')));
                                },
                                child: homecontenar(
                                  auter: mainCubit.newsDataJust[index].author ?? '',
                                  imagee:
                                      mainCubit.newsDataJust[index].urlToImage ?? 'https://i.imgur.com/QkIa5tT.jpeg',
                                  tital: mainCubit.newsDataJust[index].title ?? '',
                                )),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 10.w,
                            ),
                            itemCount: mainCubit.newsData.length,
                            scrollDirection: Axis.horizontal,
                          ))
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {Navigator.pushNamed(context, '/Article');},
                      //         child: homecontenar(),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {Navigator.pushNamed(context, '/Article');},
                      //         child: homecontenar(),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {Navigator.pushNamed(context, '/Article');},
                      //         child: homecontenar(),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {Navigator.pushNamed(context, '/Article');},
                      //         child: homecontenar(),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {Navigator.pushNamed(context, '/Article');},
                      //         child: homecontenar(),
                      //       )
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
        );
      },
    );
  }
}
