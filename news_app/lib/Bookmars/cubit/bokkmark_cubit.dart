import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/Home/bloc/cubit/news_cubit.dart';
import 'package:news_app/api/api.dart';
import 'package:news_app/modils/news_modil.dart';

part 'bokkmark_state.dart';

class BokkmarkCubit extends Cubit<BokkmarkState> {
  BokkmarkCubit() : super(BokkmarkInitial());
   ApiConseuomer apiConseuomer = ApiConseuomer();
  List<NewsModil> DAtabook = [];
  fatchDAtabook() async {
    emit(DatabookLoding());
   try{
     var dataRes =
        await apiConseuomer.getData(url: Endpoints.topheadlines, country: "us",);
        DAtabook = (dataRes['articles'] as List<dynamic>)
    .map((e) => NewsModil.fromJson(e ))
    .toList();
        print(DAtabook[0].title);
        emit(DatabookLodid());
   }catch(e){
    print(e.toString());
    emit(DatabookFiald());
   }
  }
}
