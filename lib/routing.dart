class GoRouter {
  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/details/:id/:name',
        builder: (context, state) {
          final id = state.params['id'];
          final name = state.params['name'];
          return DetailsScreen(id: id!, name: name!);
        },
      ),
    ],
  );
}
