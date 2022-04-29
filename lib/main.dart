import 'gallery_exporter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
// TODO: put firebase here instaed, so that we no longer use the firebase connect widget 
  runApp(
    const ProviderScope(
      child: RootRestorationScope(
        restorationId: galleryId,
        child: CupertinoIconsGallery(),
      ),
    ),
  );
}
