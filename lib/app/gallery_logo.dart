// Flutter imports:

// Project imports:
import '../gallery_exporter.dart';
///GalleryLogo class
class GalleryLogo extends StatelessWidget {
  ///[GalleryLogo] constructor
  const GalleryLogo({
    super.key,
    this.iconSize = 40,
    this.iconColor = galleryWhite,
  });
///[iconSize] is the size of the icon
  final double? iconSize;
///[iconColor] is the color of the icon
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.noise_aware,
      size: iconSize,
      color: iconColor,
    );
  }
}
