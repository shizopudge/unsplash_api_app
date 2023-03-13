import 'package:animated_app/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/image_bloc/image_bloc.dart';
import 'bloc/images_bloc/images_bloc.dart';
import 'bloc/user_bloc/user_bloc.dart';
import 'data/repositories/images_repository.dart';
import 'data/repositories/users_repository.dart';
import 'ui/home/state/home_appbar_cubit.dart';
import 'ui/home/state/home_grid_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ImagesBloc(
            imagesRepository: ImagesRepository(),
          )..add(
              const ImagesEvent.getImages(
                page: 1,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => ImageBloc(
            imagesRepository: ImagesRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => UserBloc(
            usersRepository: UsersRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => HomeAppbarCubit(),
        ),
        BlocProvider(
          create: (context) => HomeGridTypeCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
