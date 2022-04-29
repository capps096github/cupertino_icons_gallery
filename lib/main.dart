import 'gallery_exporter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
// TODO: put firebase here instaed, so that we no longer use the firebase connect widget 
  //  When we launch this app don't forget to make this repo public
  runApp(
    const ProviderScope(
      child: RootRestorationScope(
        restorationId: galleryId,
        child: CupertinoIconsGallery(),
      ),
    ),
  );
}
