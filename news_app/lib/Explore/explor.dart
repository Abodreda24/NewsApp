import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Explore/explorcontunar.dart';
import 'package:news_app/Explore/row1explor.dart';
import 'package:news_app/Home/Article.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';

class explor extends StatelessWidget {
  const explor({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        var mainCubit = BlocProvider.of<NewsCubit>(context);
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
            backgroundColor: Color(0xFFE9EEFA),
            title: Text(
              "Explore",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
                },
                icon: Icon(Icons.search),
                color: Colors.black,
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 10.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    row1explor(roww: "Business"),
                    row1explor(roww: "Entertainment"),
                    row1explor(roww: "Health"),
                    row1explor(roww: "Science"),
                    row1explor(roww: "Sports"),
                    row1explor(roww: "Technology"),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 270.h,
                width: 330.w,
                child: Column(children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  state is DataExploreLoding
                      ? CircularProgressIndicator()
                      : Container(
                          height: 150.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  centerSlice: Rect.largest,
                                  image: NetworkImage(
                                      mainCubit.newsDataExplore[0].urlToImage ??
                                          ""))),
                        ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                      width: 270.w,
                      height: 60,
                      child: Text(
                        "Uncovering the Hidden Gems of the Amazon Forest",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                centerSlice: Rect.largest,
                                image: AssetImage("assets/images/man1.png"))),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        child: Text("Mr. Lana Kub,",
                            style: TextStyle(color: Colors.black)),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                        child: Text("May 1, 2023",
                            style: TextStyle(color: Colors.black)),
                      )
                    ],
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 600.h,
                    width: 450.w,
                    child: ListView.separated(
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Article(
                                        imag: mainCubit.newsDataExplore[index]
                                                .urlToImage ??
                                            '',
                                        title: mainCubit
                                                .newsDataExplore[index].title ??
                                            '',
                                        descreption: mainCubit
                                                .newsDataExplore[index]
                                                .content ??
                                            '',
                                        auther: mainCubit.newsDataExplore[index]
                                                .author ??
                                            '',
                                        createdAt: mainCubit
                                                .newsDataExplore[index]
                                                .publishedAt ??
                                            '')));
                          },
                          child: explorcontunar(
                            auter:
                                mainCubit.newsDataExplore[index].author ?? '',
                            imagee:
                                mainCubit.newsDataExplore[index].urlToImage ??
                                    '',
                            tital: mainCubit.newsDataExplore[index].title ?? '',
                          )),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10.w,
                      ),
                      itemCount: mainCubit.newsDataExplore.length,
                      scrollDirection: Axis.vertical,
                    )),
              ),
              // explorcontunar(),
              // SizedBox(
              //   height: 5.h,
              // ),
              // explorcontunar(),
              // SizedBox(
              //   height: 5.h,
              // ),
              // explorcontunar(),
              // SizedBox(
              //   height: 5.h,
              // ),
              // explorcontunar(),
              // SizedBox(
              //   height: 5.h,
              // ),
              // explorcontunar(),
              SizedBox(
                height: 5.h,
              ),
            ]),
          ),
        );
      },
    );
  }
}
