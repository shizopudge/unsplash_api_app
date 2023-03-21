import 'package:animated_app/ui/favorite/favorite_screen.dart';
import 'package:go_router/go_router.dart';

import 'ui/home/home_screen.dart';
import 'ui/image/components/full_screen_image.dart';
import 'ui/image/image_screen.dart';
import 'ui/splash/splash_screen.dart';
import 'ui/user/user_profile_screen.dart';

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
            builder: (context, state) => const ImageScreen(
              isFromFavorite: false,
            ),
            routes: <RouteBase>[
              GoRoute(
                path: 'user_profile',
                builder: (context, state) => const UserProfileScreen(
                  isCurrentUserProfile: false,
                ),
              ),
              GoRoute(
                path: 'full_image',
                name: 'full_image',
                builder: (context, state) => FullScreenImage(
                  image: state.queryParams['image'],
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'current_user_profile',
            builder: (context, state) => const UserProfileScreen(
              isCurrentUserProfile: true,
            ),
          ),
          GoRoute(
            path: 'favorite',
            builder: (context, state) => const FavoriteScreen(),
            routes: <RouteBase>[
              GoRoute(
                path: 'image',
                builder: (context, state) => const ImageScreen(
                  isFromFavorite: true,
                ),
                routes: <RouteBase>[
                  GoRoute(
                    path: 'user_profile_from_fav',
                    builder: (context, state) => const UserProfileScreen(
                      isCurrentUserProfile: false,
                    ),
                  ),
                  GoRoute(
                    path: 'full_image_from_fav',
                    name: 'full_image_from_fav',
                    builder: (context, state) => FullScreenImage(
                      image: state.queryParams['image'],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
