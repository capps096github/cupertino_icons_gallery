// Project imports:
import 'gallery_exporter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initailize the Hive DB
  await Hive.initFlutter();

  // Register the Hive Adapters
  Hive.registerAdapter(GalleryIconAdapter());
  Hive.registerAdapter(RecentSearchItemAdapter());

// TODO: When we launch this app don't forget to make this repo public
// 
  runApp(
    const ProviderScope(
      child: RootRestorationScope(
        restorationId: galleryId,
        child: FirebaseConnect(),
      ),
    ),
  );
}
