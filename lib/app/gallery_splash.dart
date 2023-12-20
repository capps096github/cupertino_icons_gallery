// Project imports:
import '../gallery_exporter.dart';

class GallerySplash extends StatelessWidget {
  const GallerySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: galleryColor,
      body: ExpandedScrollingColumn(
        children: [
          Expanded(
            child: Center(
              child: GalleryLogo(iconSize: 56),
            ),
          ),
          // const VerticalSpacing(of: 4),
          // from THE C APPS TEAM
          // const FromCAPPS(),
        ],
      ),
    );
  }
}
