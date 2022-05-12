// Flutter imports:

// Project imports:
import '../gallery_exporter.dart';

class GalleryLogo extends StatelessWidget {
  const GalleryLogo({
    Key? key,
    this.iconSize = 40,
    this.iconColor = galleryWhite,
  }) : super(key: key);

  final double? iconSize;

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
