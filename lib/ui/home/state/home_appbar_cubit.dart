import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAppbarCubit extends Cubit<bool> {
  HomeAppbarCubit() : super(false);

  void isCollapsed(bool isCollapsed) => emit(isCollapsed);
}
