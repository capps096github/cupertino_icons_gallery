// Project imports:
import 'package:flutter/cupertino.dart';

import '../../gallery_exporter.dart';
import 'title_banner.dart';

///This is the app bar of the home screen
AppBar iconsAppBar() {

  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 10,
    title: const Icon(
      CupertinoIcons.rectangle_3_offgrid_fill,
      size: 40,
    ),
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: TitleBanner(
        homeTitle: "Cupertino Icons",
      ),
    ),
  );
}
