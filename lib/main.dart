// Project imports:
import 'gallery_exporter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
// Post about it in group

// https://devlibrary.withgoogle.com/products/flutter/repos/capps096github-cupertino_icons_gallery

// authors
// https://devlibrary.withgoogle.com/authors/capps096github

// create deeplink and artwork for the app being featured on Google Dev Library
