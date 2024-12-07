import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class homecontenar extends StatelessWidget {
  const homecontenar(
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
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(20.r)),
        height: 280.h,
        width: 260.w,
        child: Column(children: [
          SizedBox(
            height: 5,
          ),
          Container(
            width: 350.w,
            height: 150.h,
            padding: EdgeInsets.all(8.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imagee,
                  scale: 2.5,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 9),
            child: Text(tital,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  auter,
                  maxLines: 1,
                )),
          )
        ]),
      ),
    );
  }
}
