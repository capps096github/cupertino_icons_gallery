// Project imports:
import '../../../app_exporter.dart';
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
    final showDetails = (selectedIconIndex != -1);

    return AnimatedContainer(
      duration: oneSecond,
      curve: Curves.easeInOutQuint,
      constraints: const BoxConstraints(minWidth: sideBarDesktopWidth),
      margin: (showDetails && isMobile) ? margin0 : marginLeft4,
      decoration: BoxDecoration(
        borderRadius: borderRadius8,
        border: Border.all(
          color: appColor,
          width: 2,
        ),
      ),
      child: isMobile
          ? AnimatedSwitcher(
              duration: halfSeconds,
              reverseDuration: halfSeconds,
              switchInCurve: Curves.fastOutSlowIn,
              child: showDetails ? const IconDetails() : const IconGridView(),
              transitionBuilder: (child, animation) {
                return SlideFadeTransition(
                  animation: animation,
                  child: child,
                );
              },
            )
          : const IconGridView(),
    );
  }
}
