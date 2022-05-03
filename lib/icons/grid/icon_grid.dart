import '../../gallery_exporter.dart';
import '../gallery_icon.dart';
import '../icon_providers.dart';
import '../details/icon_details.dart';
import 'icon_grid_view.dart';

class IconGrid extends ConsumerWidget {
  const IconGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// State Provider for all subjects
    final List<GalleryIcon> galleryIconList =
        ref.watch(allIconsProvider.state).state;

    // provides the length of the subjects list
    final int totalIconCount = galleryIconList.length;

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider.state).state;

    // check if we are on mobile
    final isMobile = GalleryResponsive.isMobile(context);

    // show Detail here only if we are onMobile
    final showDetails = (selectedIconIndex != -1) && isMobile;

    return Container(
      constraints: const BoxConstraints(minWidth: sideBarDesktopWidth),
      child: AnimatedSwitcher(
        duration: twoHundredMilliseconds,
        reverseDuration: twoHundredMilliseconds,
        switchInCurve: Curves.fastOutSlowIn,
        child: (!showDetails)
            ? IconGridView(
                totalIconCount: totalIconCount,
                galleryIconList: galleryIconList,
                selectedIconIndex: selectedIconIndex,
              )
            : IconDetails(
                onTap: () {
                  // reset the current value to -1
                  ref.watch(selectedIconIndexProvider.notifier).state = -1;
                },
              ),
        transitionBuilder: (child, animation) {
          return SlideFadeTransition(
            animation: animation,
            child: child,
          );
        },
      ),
    );
  }
}
