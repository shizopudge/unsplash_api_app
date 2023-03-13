import 'package:flutter_bloc/flutter_bloc.dart';

class HomeGridTypeCubit extends Cubit<int> {
  HomeGridTypeCubit() : super(1);

  void setGridType(int gridType) => emit(gridType);
}
