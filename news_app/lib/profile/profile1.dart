import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
                    Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1.w))),
              height: 220.h,
              width: 380.w,
              child: Column(children: [
                SizedBox(
                  height: 0.h,
                ),
                Container(
                  height: 150.h,
                  width: 340.w,
                  child: Row(children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 100.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                          
                              image: AssetImage("assets/images/abodd.jpg"))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 80.h,
                      width: 150.w,
                      child: Column(children: [
                        Text(
                          "Abdalrhman Reda",
                          style: TextStyle(
                              fontSize: 21.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.align_vertical_top,
                                color: const Color.fromARGB(255, 114, 33, 243)),
                            Text(
                              "Bookworm",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Color.fromARGB(255, 41, 18, 248)),
                            )
                          ],
                        )
                      ]),
                    )
                  ]),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(children: [
                      Text(
                        "Article Read",
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "320",
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ]),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(children: [
                      Text(
                        "Streak",
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "345 Days",
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ]),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "Level",
                          style: TextStyle(
                              fontSize: 10.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "125",
                          style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    )
                  ],
                )
              ]),
            ),
                    ),
                    Container(
                    
            height: 400.h,
            width: 350.w,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Reading History",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector( 
                onTap:() {
                
              }, 
                child: Container(height: 30.h,width: 340.w,
                  child: Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text("Clapped Articles",
                          style: TextStyle(color: Colors.black)),
                          SizedBox(width: 180.w,),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
               GestureDetector( 
                onTap:() {
                
              }, 
                child: Container(height: 30.h,width: 340.w,
                  child: Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text("Articles History",
                          style: TextStyle(color: Colors.black)),
                          SizedBox(width: 180.w,),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Settings",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
                SizedBox(height: 10.h,),
               GestureDetector( 
                onTap:() {
                
              }, 
                child: Container(height: 30.h,width: 340.w,
                  child: Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text("My Account",
                          style: TextStyle(color: Colors.black)),
                          SizedBox(width: 200.w,),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
                SizedBox(height: 10.h,),
              GestureDetector( 
                onTap:() {
                
              }, 
                child: Container(height: 30.h,width: 340.w,
                  child: Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text("Privacy Settings",
                          style: TextStyle(color: Colors.black)),
                          SizedBox(width: 175.w,),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              GestureDetector( 
                onTap:() {
                
              }, 
                child: Container(height: 30.h,width: 340.w,
                  child: Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text("Offline Reading",
                          style: TextStyle(color: Colors.black)),
                          SizedBox(width: 180.w,),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
                 SizedBox(height: 10.h,),
              GestureDetector( 
                onTap:() {
                
              }, 
                child: Container(height: 30.h,width: 340.w,
                  child: Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Text("About Us",
                          style: TextStyle(color: Colors.black)),
                          SizedBox(width: 215.w,),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            
               
            ]),
                    )
                  ]),
          )),
    );
  }
}
