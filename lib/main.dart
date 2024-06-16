// Project imports:
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

import 'app_exporter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // to remove the # from the web url
  usePathUrlStrategy();

  runApp(
    const ProviderScope(
      child: RootRestorationScope(
        restorationId: galleryId,
        child: FirebaseConnect(),
      ),
    ),
  );
}

// TODO: update README.md to reflect featured on Google Dev Library
//  Add image of icons showcase to the readme file too
// Add dark mode support
// Post about it in group
// Add a new signing key.properties file and update the keystore upload key on playstore and the android build.gradle for uploading a new update

// https://devlibrary.withgoogle.com/products/flutter/repos/capps096github-cupertino_icons_gallery

// authors
// https://devlibrary.withgoogle.com/authors/capps096github

// create deeplink and artwork for the app being featured on Google Dev Library
