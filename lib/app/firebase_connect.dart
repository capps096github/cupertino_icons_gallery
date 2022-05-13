// Package imports:

// Project imports:
import '../firebase_options.dart';
import '../gallery_exporter.dart';

///This Connects the FC App to Firebase
class FirebaseConnect extends ConsumerWidget {
  const FirebaseConnect({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ref) {
    final firebaseConnector = isGalleryWindows
        ? ref.watch(_splashProvider)
        : ref.watch(_firebaseProvider);

    return firebaseConnector.when(
      data: (_) => const CupertinoIconsGallery(),
      loading: () => Container(
        color: galleryColor,
        child: Center(
          child: SvgPicture.asset(
            "images/cupertino_icon_white.svg",
            height: 80,
            width: 80,
          ),
        ),
      ),
      error: (error, stackTrace) => ErrorWidget(error),
    );
  }
}

final _firebaseProvider = FutureProvider<FirebaseApp>((ref) async {
  return await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      );
});

final _splashProvider = FutureProvider<dynamic>((ref) async {
  // delay for 2 seconds to show the splash screen
  return await Future.delayed(twoSeconds);
});
