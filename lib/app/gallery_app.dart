// Project imports:
import '../gallery_exporter.dart';

class CupertinoIconsGallery extends ConsumerWidget {
  const CupertinoIconsGallery({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final galleryTheme = ref.watch(appThemeProvider);

    return MaterialApp.router(
      routeInformationProvider: galleryRouter.routeInformationProvider,
      routeInformationParser: galleryRouter.routeInformationParser,
      routerDelegate: galleryRouter.routerDelegate,
      theme: galleryTheme,
      color: galleryColor,
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
