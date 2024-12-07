import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class book1 extends StatelessWidget {
  const book1(
      {super.key,
      required this.imagee,
      required this.tital,
      required this.auter});
  final String imagee;
  final String tital;
  final String auter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        width: 300.w,
        height: 100.h,
        child: Row(
          children: [
            Column(children: [
              SizedBox(
                width: 240.w,
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  tital,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 240.w,
                child: Text(
                  auter,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ]),
            SizedBox(
              width: 5.w,
            ),
            SizedBox(width: 10.w,),
            Container(
              height: 70.h,
              width: 80.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      centerSlice: Rect.largest, image: NetworkImage(imagee))),
            )
          ],
        ),
      ),
    );
  }
}
