import 'package:animated_app/ui/user/user_profile_screen.dart';
import 'package:go_router/go_router.dart';

import 'ui/home/home_screen.dart';
import 'ui/image/image_screen.dart';
import 'ui/splash/splash_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: 'image',
            builder: (context, state) => const ImageScreen(),
            routes: <RouteBase>[
              GoRoute(
                path: 'user_profile',
                builder: (context, state) => const UserProfileScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
