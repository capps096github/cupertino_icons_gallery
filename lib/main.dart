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
