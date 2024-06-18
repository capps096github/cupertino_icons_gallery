// Project imports:
import '../app_exporter.dart';

///GallerySplash class
class GallerySplash extends StatelessWidget {
  ///[GallerySplash] constructor
  const GallerySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appColor,
      body: ExpandedScrollingColumn(
        children: [
          Expanded(
            child: Center(
              child: AppLogo(logoSize: 56),
            ),
          ),
          // const Spacing(of: 4),
          // from THE C APPS TEAM
          // const FromCAPPS(),
        ],
      ),
    );
  }
}
