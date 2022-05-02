import '../../gallery_exporter.dart';
import '../navbar/exporter.dart';
import 'title_banner.dart';

///This is the app bar of the home screen
AppBar homeDesktopAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Consumer(builder: (context, ref, _) {
      // current index of the navbar
      final navBarIndex = ref.watch(selectedNavBarIndexProvider.state).state;

      final homeIcon = navbarIcons[navBarIndex].selectedIcon;

      return Icon(
        homeIcon,
        size: 40,
      );
    }),
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: TitleBanner(),
    ),
  );
}
