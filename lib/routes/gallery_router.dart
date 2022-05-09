// Project imports:
import '../gallery_exporter.dart';

// TODO: Add firebase analytics into the app for tracking purposes on Number of Users.


final galleryRouterProvider = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const GalleryConnect(),
      routes: [
        // ? ----- Repository -----
        GoRoute(
          name: 'icon',
          path: 'icon/:name',
          builder: (context, state) {
            // final iconName = state.params['name']!;

            // // use state.queryParams to get search query from query parameter
            // final idString = state.queryParams['id']!;
            // final repoId = int.parse(idString);

            return const SizedBox();

            // return IconDetails(githubRepoId: repoId, githubRepoName: repoName);
          },
        ),
      ],
    ),
  ],

  // turn off the # in the URLs on the web
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: initialLocation,
  //  here our firebase analytics observers
  observers: [
    // FirebaseAnalyticsObserver(analytics: _analytics),
  ],
  restorationScopeId: galleryId,
  errorBuilder: (context, state) =>
      GalleryError(errorText: state.error.toString()),
);
