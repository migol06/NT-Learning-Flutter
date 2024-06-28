import 'package:go_router/go_router.dart';
import 'package:sample/screens/screens.dart';

class Routes {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) {
          final image = state.uri.queryParameters['image'] ?? 'No Image';
          final name = state.uri.queryParameters['name'] ?? 'No name';
          return MyPersonalProfileScreen(
            image: image,
            name: name,
          );
        },
      )
    ],
  );
}
