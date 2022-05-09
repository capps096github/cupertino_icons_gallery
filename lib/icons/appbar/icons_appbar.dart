// Project imports:
import 'package:flutter/cupertino.dart';

import '../../gallery_exporter.dart';
import 'title_banner.dart';

///This is the app bar of the home screen
AppBar iconsAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 10,
    title: Stack(
      children: const [
        Positioned(
          bottom: -.5,
          right: -.5,
          child: Icon(
            CupertinoIcons.rectangle_3_offgrid_fill,
            size: 40,
            color: galleryWhite,
          ),
        ),
        Icon(
          CupertinoIcons.rectangle_3_offgrid_fill,
          size: 40,
          color: galleryBlue,
        ),
      ],
    ),
    actions: [
      // github icon
      IconButton(
        icon: const Icon(Ionicons.logo_github),
        onPressed: () async => await linkLauncher(repoLink),
      ),
    ],
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: TitleBanner(
        homeTitle: "Cupertino Icons",
      ),
    ),
  );
}
