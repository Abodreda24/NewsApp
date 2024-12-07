import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class book2 extends StatelessWidget {
  const book2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(20)),
      width: 360.w,
      height: 100.h,
      child: Row(
        children: [
          Column(children: [
            Container(padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
               width: 220.w,
               height: 60.h,
            child: Text(
                    "Experience the Serenity of Japan's Traditional ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
          ),
          Container(margin: EdgeInsets.only(right: 150.w),
            
           
            child: Row( 
                children: [
             
             Text("Interior")
                ],
              ),
          )
          ]),
          SizedBox(width: 0.w,),
          Container(height: 70.h,width: 80.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                image: DecorationImage(centerSlice: Rect.largest,
                    image: AssetImage("assets/images/3.jpg"))),
          ),
          SizedBox(width: 5.w,),
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.bookmark))
        ],
      ),
    );
  }
}
