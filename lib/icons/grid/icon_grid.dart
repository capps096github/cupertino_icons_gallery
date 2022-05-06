// Project imports:
import '../../gallery_exporter.dart';
import '../details/icon_details.dart';
import '../icon_providers.dart';
import 'icon_grid_view.dart';

class IconGrid extends ConsumerWidget {
  const IconGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        child: (!showDetails) ? const IconGridView() : const IconDetails(),
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
