// Project imports:
import '../gallery_exporter.dart';

// TODO: Add firebase analytics into the app for tracking purposes on Number of Users.

final galleryRouterProvider = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const GalleryConnect(),
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
