import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Explore/explorcontunar.dart';
import 'package:news_app/Explore/row1explor.dart';
import 'package:news_app/Explore/search.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
           Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => search()));
        }, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text("Search results",style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  row1explor(roww: "All"),
                  row1explor(roww: "Technology"),
                  row1explor(roww: "Business"),
                  row1explor(roww: "Business"),
                  row1explor(roww: "Business"),
                  row1explor(roww: "Business"),
                ],
              ),
            ),
          //    explorcontunar(),
          // SizedBox(height: 5.h,),
          //  explorcontunar(),
          // SizedBox(height: 5.h,),
          //  explorcontunar(),
          // SizedBox(height: 5.h,),
          //  explorcontunar(),
          // SizedBox(height: 5.h,),
          //  explorcontunar(),
          // SizedBox(height: 5.h,), explorcontunar(),
          // SizedBox(height: 5.h,),
          //  explorcontunar(),
          // SizedBox(height: 5.h,),
          //  explorcontunar(),
          // SizedBox(height: 5.h,),
          //  explorcontunar(),
          // SizedBox(height: 5.h,),
          //  explorcontunar(),
          // SizedBox(height: 5.h,),
           ]),
      ),
    );
  }
}
