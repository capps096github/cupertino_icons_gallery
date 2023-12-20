// Project imports:

// Project imports:
import '../../../gallery_exporter.dart';
import 'title_banner.dart';

///This is the app bar of the home screen
AppBar iconsAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const GalleryLogo(),
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: TitleBanner(
        homeTitle: "Cupertino Icons",
      ),
    ),
  );
}
