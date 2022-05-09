import '../gallery_exporter.dart';
import 'gallery_splash.dart';

///This widget is responsible for connecting the app
/// It checks if we are on the web, then it shows [CalcutHome]
/// else if we are on mObile, it loads the ads [AdsConnect]
class GalleryConnect extends StatefulWidget {
  const GalleryConnect({Key? key}) : super(key: key);

  @override
  State<GalleryConnect> createState() => _GalleryConnectState();
}

class _GalleryConnectState extends State<GalleryConnect> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final _savedResultsHive = ref.watch(_savedResultsHiveProvider);

        return AnimatedSwitcher(
          duration: halfSeconds,
          child: _savedResultsHive.when(
              data: (_) => const CupertinoIconsScreen(),
              loading: () => const GallerySplash(),
              error: (error, stackTrace) =>
                  GalleryError(errorText: error.toString())),
        );
      },
    );
  }

  @override
  void dispose() {
    Hive.box(recentSearchBoxName).compact();

    Hive.close();
    super.dispose();
  }
}

final _savedResultsHiveProvider =
    FutureProvider<Box<RecentSearchItem>>((ref) async {
  ///[RecentSearchItem]
  return await Hive.openBox<RecentSearchItem>(
    recentSearchBoxName,
    compactionStrategy: (entries, deletedEntries) => deletedEntries > 10,
  );
});
