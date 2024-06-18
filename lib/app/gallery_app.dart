// Project imports:
import '../app_exporter.dart';

///CupertinoIconsGallery
class CupertinoIconsGallery extends ConsumerWidget {
  ///[CupertinoIconsGallery] constructor
  const CupertinoIconsGallery({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final galleryTheme = ref.watch(appThemeProvider);

    return MaterialApp.router(
      routeInformationProvider: galleryRouter.routeInformationProvider,
      routeInformationParser: galleryRouter.routeInformationParser,
      routerDelegate: galleryRouter.routerDelegate,
      theme: galleryTheme,
      color: appColor,
      title: appTitle,
      debugShowCheckedModeBanner: false,
      restorationScopeId: galleryId,
      // -- Scroll Behavior --
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
        scrollbars: false,
      ),
    );
  }
}
