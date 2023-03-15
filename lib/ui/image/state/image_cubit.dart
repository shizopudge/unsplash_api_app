import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImageCubit extends Cubit<bool> {
  ImageCubit() : super(true);

  Future isImageBig(bool isImageBig) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setBool('isImageFull', isImageBig);
    emit(isImageBig);
  }

  Future getIsImageBig() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final bool? isImageBig = sharedPreferences.getBool('isImageBig');
    if (isImageBig != null) {
      emit(isImageBig);
    }
  }
}
