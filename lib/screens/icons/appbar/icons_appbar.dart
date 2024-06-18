// Project imports:

// Project imports:
import '../../../app_exporter.dart';
import 'title_banner.dart';

///This is the app bar of the home screen
AppBar iconsAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const TitleBanner(),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Padding(
        padding: padding8,
        child: Center(
          child: AppButton.small(
            text: 'Explore on Github'.toUpperCase(),
            iconWidget: const Icon(
              Ionicons.logo_github,
              color: appColor,
            ),
            onTap: openGithub,
            textColor: appColor,
            buttonColor: appWhite,
          ),
        ),
      ),
    ),
  );
}
