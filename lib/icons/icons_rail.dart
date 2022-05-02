import '../gallery_exporter.dart';
import 'icon_details.dart';
import 'icon_providers.dart';

class IconsRail extends ConsumerWidget {
  const IconsRail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // check if we are on mobile
    final isMobile = GalleryResponsive.isMobile(context);

    // isRailOpenProvider
    // final isRailOpen = ref.watch(isRailOpenProvider.state).state;

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider.state).state;

    //this is the condition to show the grid, only when the user has not selected anything i.e value == -1
    final showDetails = (selectedIconIndex != -1) && !isMobile;

    return Material(
      color: galleryColor,
      elevation: 8,
      child: AnimatedContainer(
        duration: threeHundredMilliseconds,
        height: double.infinity,
        width: showDetails ? sideBarDesktopWidth : 0,
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              width: .25,
              color: galleryWhite,
            ),
          ),
        ),
        child: IconDetails(
          onTap: () {
            // reset the current value to -1
            ref.watch(selectedIconIndexProvider.notifier).state = -1;
          },
        ),
      ),
    );
  }
}
