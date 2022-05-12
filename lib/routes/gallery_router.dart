// Project imports:
import '../gallery_exporter.dart';

// for app analytics
FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

final galleryRouterProvider = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CupertinoIconsScreen(),
    ),
  ],

  // turn off the # in the URLs on the web
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: initialLocation,
  //  here our firebase analytics observers
  observers: [
    // disable for windows
    if (!isGalleryWindows) FirebaseAnalyticsObserver(analytics: _analytics),
  ],
  restorationScopeId: galleryId,
  errorBuilder: (context, state) => GalleryError(
    errorText: state.error.toString(),
  ),
);
