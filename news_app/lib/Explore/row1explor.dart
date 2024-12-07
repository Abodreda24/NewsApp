import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';

class row1explor extends StatelessWidget {
  row1explor({super.key, required this.roww});
  String roww;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
         var mainCubit = BlocProvider.of<NewsCubit>(context);
        return Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(60, 185, 182, 182),
            ),
            height: 40.h,
            width: 120.w,
            child: TextButton(
              onPressed: () {
                mainCubit.fatchDataExplore(roww);
              },
              child: Text(roww, style: TextStyle(color: Colors.black,fontSize: 13.sp)),
            ));
      },
    );
  }
}
