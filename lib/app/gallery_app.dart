import '../gallery_exporter.dart';

class CupertinoIconsGallery extends StatelessWidget {
  const CupertinoIconsGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: galleryRouterProvider.routeInformationParser,
      routerDelegate: galleryRouterProvider.routerDelegate,
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
