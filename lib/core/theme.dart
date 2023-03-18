import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<String> {
  ThemeCubit() : super('light');

  Future setTheme(String theme) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString('theme', theme);
    emit(theme);
  }

  Future getTheme() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final String? theme = sharedPreferences.getString('theme');
    if (theme != null) {
      emit(theme);
    }
  }
}

class AppTheme {
  static var lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey.shade300,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.grey.shade300,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Colors.black,
        ),
      ),
    ),
    dialogBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.black,
        ),
        iconColor: MaterialStatePropertyAll(
          Colors.black,
        ),
      ),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Colors.black,
    ),
  );
  static var darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.black,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Colors.white,
        ),
      ),
    ),
    dialogBackgroundColor: Colors.black,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.white,
        ),
        iconColor: MaterialStatePropertyAll(
          Colors.white,
        ),
      ),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Colors.white,
    ),
  );
}
