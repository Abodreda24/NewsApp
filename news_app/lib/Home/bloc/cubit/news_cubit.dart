import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:news_app/Bookmars/bookMark.dart';
import 'package:news_app/Explore/explor.dart';
import 'package:news_app/Home/home.dart';
import 'package:news_app/api/api.dart';
import 'package:news_app/modils/news_modil.dart';

import 'package:news_app/profile/profile1.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  // List<HomeApi> DataList= [];
  // List<HomeApi> categryData= [];
  // fetchdataa() async{
  // DataList = await NewsApiSr().fetchData();
  // }
  //  fetchdataabycatgory(String categroy) async{
  // categryData = await NewsApiSr().fetchDatabycategroy(categroy);
  // }

  int currentIndex = 0;
  void changeIndex(int index) {
    emit(NewsInitial());
    currentIndex = index;
    emit(MainChangeIndex());
  }

  List<Widget> screens = [
    const Home(),
    const explor(),
    const bookMark(),
    const profile()
  ];

  List<SalomonBottomBarItem> items = [
    SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("home")),
    SalomonBottomBarItem(icon: Icon(Icons.public), title: Text("Explore")),
    SalomonBottomBarItem(icon: Icon(Icons.bookmark), title: Text("Bookmark")),
    SalomonBottomBarItem(icon: Icon(Icons.person), title: Text("Profile")),
  ];

  ApiConseuomer apiConseuomer = ApiConseuomer();
  List<NewsModil> newsData = [];
  fatchDAta() async {
    emit(fetchdataa());
   try{
     var dataRes =
        await apiConseuomer.getData(url: Endpoints.topheadlines, country: "us",);
        newsData = (dataRes['articles'] as List<dynamic>)
    .map((e) => NewsModil.fromJson(e ))
    .toList();
       
        emit(fetchdataabycatgory());
   }catch(e){
    print("ffffffffff ${e.toString()}");
    emit(fetchdataabycatgory());
   }
  }
  
  List<NewsModil> newsDataExplore = [];
  fatchDataExplore(String category ) async {
    emit(DataExploreLoding());
   try{
     var dataRes =
        await apiConseuomer.getData(url: Endpoints.topheadlines, country: "us",category:category );
        newsDataExplore = (dataRes['articles'] as List<dynamic>)
    .map((e) => NewsModil.fromJson(e ))
    .toList();
        
        emit(DataExploreLodid());
   }catch(e){
    print("mmmmmmmmmmmmmmmmm${e.toString()}");
    emit(DataExploreFiald());
   }
  }
    List<NewsModil> newsDataJust = [];
  fatchDatajust() async {
    emit(DataJustLoding());
   try{
     var dataRes =
        await apiConseuomer.getData(url: Endpoints.topheadlines, country: "us",category:"technology" );
        newsDataJust = (dataRes['articles'] as List<dynamic>)
    .map((e) => NewsModil.fromJson(e ))
    .toList();
       
        emit(DataJustLodid());
   }catch(e){
    print("aaaaaaaaaaaa${e.toString()}");
    emit(DataJustFiald());
   }
  }
  List<NewsModil> DAtabook = [];
  fatchDAtabook() async {
    emit(DatabookLoding());
   try{
     var dataRes =
        await apiConseuomer.getData(url: Endpoints.topheadlines, country: "us",);
        DAtabook = (dataRes['articles'] as List<dynamic>)
    .map((e) => NewsModil.fromJson(e ))
    .toList();
       
        emit(DatabookLodid());
   }catch(e){
    print("ssssssssssssssssssss${e.toString()}");
    emit(DatabookFiald());
   }
  }
}


