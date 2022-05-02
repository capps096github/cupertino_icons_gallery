import '../gallery_exporter.dart';
import 'appbar/exporter.dart';
import 'home_screens.dart';
import 'rail/navrail.dart';

class CupertinoIconsHome extends StatelessWidget {
  const CupertinoIconsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GalleryResponsive(
      mobile: Scaffold(
        appBar: homeAppBar(),
        body: const HomeScreens(),
        extendBody: true,
        // bottomNavigationBar: const HomeNavBar(),
      ),

      // * desktop and tablet view
      desktop: Row(
        children: [
          // rail
          const HomeNavRail(),
          // body
          Expanded(
            child: Scaffold(
              appBar: homeDesktopAppBar(),
              body: const HomeScreens(),
            ),
          ),
        ],
      ),
    );
  }
}
