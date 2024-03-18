// Project imports:
import '../../../gallery_exporter.dart';
import '../details/icon_details.dart';
import '../icon_providers.dart';
import 'icon_grid_view.dart';
///IconGrid class creation
class IconGrid extends ConsumerWidget {
  ///[IconGrid] constructor
  const IconGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider);

    // check if we are on mobile
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isMobile = responsiveness.isMobileScreen;

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
