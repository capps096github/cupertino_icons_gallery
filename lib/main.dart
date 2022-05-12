// Project imports:
import 'gallery_exporter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

// TODO: When we launch this app don't forget to make this repo public
//  Deploy is aaolawble and you cAN
  runApp(
    const ProviderScope(
      child: RootRestorationScope(
        restorationId: galleryId,
        child: FirebaseConnect(),
      ),
    ),
  );
}

