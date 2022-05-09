import 'package:flutter/cupertino.dart';

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
      CupertinoIcons.rectangle_3_offgrid_fill,
      size: iconSize,
      color: iconColor,
    );
  }
}
