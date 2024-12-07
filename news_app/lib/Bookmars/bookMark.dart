import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Bookmars/book1.dart';
import 'package:news_app/Bookmars/bookmark2.dart';
import 'package:news_app/Bookmars/cubit/bokkmark_cubit.dart';
import 'package:news_app/Home/Article.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';


class bookMark extends StatelessWidget {
  const bookMark({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        var bookCubit = BlocProvider.of<NewsCubit>(context); return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE9EEFA),
        title: Text("Bookmark",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
        actions: [IconButton(onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const bookmark2()),
            );
        }, icon: Icon(Icons.bookmark))],
      ),
   body: Padding(
     padding: const EdgeInsets.only(left: 0),
     child: SingleChildScrollView(
       child: Column(children: [
        SizedBox(height: 10.h,),
         SizedBox(width:380.w,
                          height: 800.h,
                          child: ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Article(
                                              imag: bookCubit.DAtabook[index]
                                                      .urlToImage ??
                                                  '',
                                              title: bookCubit
                                                      .DAtabook[index].title ??
                                                  '',
                                              descreption: bookCubit
                                                      .DAtabook[index]
                                                      .content ??
                                                  '',
                                              auther: bookCubit
                                                      .DAtabook[index].author ??
                                                  '',
                                              createdAt: bookCubit
                                                      .DAtabook[index]
                                                      .publishedAt ??
                                                  '')));
                                },
                                child:book1 (
                                  auter: bookCubit.DAtabook[index].author ?? '',
                                  imagee:
                                      bookCubit.DAtabook[index].urlToImage ??
                                          '',
                                  tital: bookCubit.DAtabook[index].title ?? '',
                                )),
                            separatorBuilder: (context, index) => SizedBox(
                            height: 10.h,
                            ),
                            itemCount: bookCubit.DAtabook.length,
                            scrollDirection: Axis.vertical,
                          )),
        // book1(),
        // book1(),
        // book1(),
        // book1(),
        // book1(),
        // book1(),
        // book1(),
        ]),
     ),
   ), );
  }
);}}
