import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class explorcontunar extends StatelessWidget {
  const explorcontunar({super.key, required this.imagee, required this.tital, required this.auter});
 final String imagee;
  final String tital;
   final String auter;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20)),
      width: 330.w,
      height: 100.h,
      child: Row(
        children: [
          Column(children: [
            Container(padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
               width: 220.w,
               height: 60.h,
            child: Text(maxLines: 2,
                    tital,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
          ),
          Container(
           
            child: Row(
                children: [
             
                  Container(
                    height: 20.h,width: 20.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(centerSlice: Rect.largest,
                            image: AssetImage(imagee))),
                  ),
                  SizedBox(width: 8.w,),
                  Container(child: Text(auter,style: TextStyle(color: Colors.black)),),
                  SizedBox(width: 4.w,),
                  Container(child: Text("May 1, 2023",style: TextStyle(color: Colors.black)),)
                ],
              ),
          )
          ]),
          SizedBox(width: 5.w,),
          Container(height: 70.h,width: 80.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                image: DecorationImage(centerSlice: Rect.largest,
                    image: NetworkImage(imagee))),
          )
        ],
      ),
    );
  }
}
