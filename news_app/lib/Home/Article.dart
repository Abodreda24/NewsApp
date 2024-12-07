import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Article extends StatelessWidget {
  const Article(
      {super.key,
      required this.imag,
      required this.title,
      required this.descreption,
      required this.auther,
      required this.createdAt});
  final String imag;
  final String title;
  final String descreption;
  final String auther;
  final String createdAt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 250.h,
            width: 600.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imag), fit: BoxFit.cover)),
          ),
          Positioned(
            top: 237,
            child: Container(
              height: 900.h,
              width: 600.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(12),
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 30.sp, fontWeight: FontWeight.bold))),
                Row(
                  children: [
                    SizedBox(width: 10.w),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 128, 49, 49),
                            borderRadius: BorderRadius.circular(50)),
                        height: 30.h,
                        width: 30.w,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(imag))),
                    SizedBox(
                      width: 10.h,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 50.h,
                      width: 80.w,
                      child: Text(auther),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 50.h,
                      width: 100.w,
                      child: Text(createdAt),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 440.h,width: 600.w,
                    child: Text(maxLines: 30,
                      descreption,
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
