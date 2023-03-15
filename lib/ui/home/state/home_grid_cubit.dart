import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeGridTypeCubit extends Cubit<int> {
  HomeGridTypeCubit() : super(1);

  Future setGridType(int gridType) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setInt('gridType', gridType);
    emit(gridType);
  }

  Future getGridType() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final int? gridType = sharedPreferences.getInt('gridType');
    if (gridType != null) {
      emit(gridType);
    }
  }
}
