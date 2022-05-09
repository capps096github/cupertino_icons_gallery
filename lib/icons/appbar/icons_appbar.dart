// Project imports:

import '../../gallery_exporter.dart';
import 'title_banner.dart';

///This is the app bar of the home screen
AppBar iconsAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 10,
    title: const GalleryLogo(),
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
