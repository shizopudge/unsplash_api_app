import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'bloc/auth_bloc/auth_bloc.dart';
import 'bloc/image_bloc/image_bloc.dart';
import 'bloc/images_bloc/images_bloc.dart';
import 'bloc/liked_images_bloc/liked_images_bloc.dart';
import 'bloc/user_bloc/user_bloc.dart';
import 'core/theme.dart';
import 'data/repositories/auth_repository.dart';
import 'data/repositories/images_repository.dart';
import 'data/repositories/users_repository.dart';
import 'router.dart';
import 'ui/home/state/home_grid_cubit.dart';
import 'ui/image/state/image_cubit.dart';

void main() {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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
          create: (context) => LikedImagesBloc(
            imagesRepository: ImagesRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => UserBloc(
            usersRepository: UsersRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
            authRepository: AuthRepository(),
            usersRepository: UsersRepository(),
          )..add(const AuthEvent.isAuthorized()),
        ),
        BlocProvider(
          create: (context) => HomeGridTypeCubit()..getGridType(),
        ),
        BlocProvider(
          create: (context) => ImageCubit()..getIsImageBig(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit()..getTheme(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, String>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: state == 'dark' ? AppTheme.darkTheme : AppTheme.lightTheme,
            themeAnimationCurve: Curves.bounceInOut,
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }
}
