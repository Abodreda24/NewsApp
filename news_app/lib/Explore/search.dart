import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Bookmars/book1.dart';
import 'package:news_app/Explore/cubit/explo_r_cubit.dart';
import 'package:news_app/Home/Article.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploRCubit, ExploRState>(
      builder: (context, state) {
        var exploRCubitt1 = BlocProvider.of<ExploRCubit>(context);
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      height: 50.h,
                      width: 280.w,
                      child: TextField(
                        
                          keyboardType: TextInputType.name,
                          controller: exploRCubitt1.searchControlar,
                          onChanged: (value) {
                            exploRCubitt1.fatchDAtaSh(value);
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(1),
                              hintText: " Search",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,style: BorderStyle.solid,strokeAlign: 0),
                                  borderRadius: BorderRadius.circular(20)),
                              filled: true,
                              fillColor: const Color.fromARGB(255, 255, 255, 255),
                              focusColor: Color.fromARGB(255, 255, 255, 255),
                              )),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 13),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 26, 255)),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 0.5.sh,
                  child: ListView.separated(
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Article(
                                      imag:
                                          exploRCubitt1.fatchDAtaSh1[index].urlToImage ??
                                              '',
                                      title:
                                          exploRCubitt1.fatchDAtaSh1[index].title ?? '',
                                      descreption:
                                          exploRCubitt1.fatchDAtaSh1[index].content ?? '',
                                      auther:
                                          exploRCubitt1.fatchDAtaSh1[index].author ?? '',
                                      createdAt:
                                          exploRCubitt1.fatchDAtaSh1[index].publishedAt ??
                                              '')));
                        },
                        child: book1(
                          auter: exploRCubitt1.fatchDAtaSh1[index].author ?? '',
                          imagee: exploRCubitt1.fatchDAtaSh1[index].urlToImage ?? '',
                          tital: exploRCubitt1.fatchDAtaSh1[index].title ?? '',
                        )),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10.h,
                    ),
                    itemCount: exploRCubitt1.fatchDAtaSh1.length,
                    scrollDirection: Axis.vertical,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
