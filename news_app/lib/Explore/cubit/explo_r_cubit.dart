import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:news_app/api/api.dart';
import 'package:news_app/modils/news_modil.dart';

part 'explo_r_state.dart';

class ExploRCubit extends Cubit<ExploRState> {

  ExploRCubit() : super(ExploRInitial());
  TextEditingController searchControlar=TextEditingController();
  ApiConseuomer apiConseuomer = ApiConseuomer();
  List<NewsModil> fatchDAtaSh1 = [];
  fatchDAtaSh(String queryParameters) async {
    emit(Fetchdataa());
    try {
      var dataRes = await apiConseuomer.getData(
        url: Endpoints.everything,
        isSearch: true,
        q: queryParameters,
        
      );
      fatchDAtaSh1 = (dataRes['articles'] as List<dynamic>)
          .map((e) => NewsModil.fromJson(e))
          .toList();
      print(fatchDAtaSh1[0].title);
      emit(fetchdataabysh());
    } catch (e) {
      print(e.toString());
      emit(fetchdataabyshfild());
    }
  }
}
