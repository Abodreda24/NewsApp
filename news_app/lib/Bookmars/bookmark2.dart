import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Bookmars/book2.dart';

class bookmark2 extends StatelessWidget {
  const bookmark2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE9EEFA),
        title: Text("Bookmark",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 5.h,
          ),
          book2(),
          book2(),
          book2(),
          book2(),
          book2(),
          book2(),
          book2(),
          book2()
        ]),
      ),
    );
  }
}
