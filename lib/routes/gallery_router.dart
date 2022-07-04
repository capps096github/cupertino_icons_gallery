// Project imports:
// ignore: depend_on_referenced_packages
import 'package:firebase_analytics/firebase_analytics.dart';

import '../gallery_exporter.dart';

// for app analytics
FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

final galleryRouter = GoRouter(
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
    if (!isGalleryWindows && !isGalleryDebug)
      FirebaseAnalyticsObserver(analytics: _analytics),
  ],
  restorationScopeId: galleryId,
  errorBuilder: (context, state) => GalleryError(
    errorText: state.error.toString(),
  ),
);
