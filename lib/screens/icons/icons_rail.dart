// Project imports:
import '../../app_exporter.dart';
import 'details/icon_details.dart';
import 'icon_providers.dart';

///
class IconsRail extends ConsumerWidget {
  ///[IconsRail] constructor
  const IconsRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // check if we are on mobile
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isMobile = responsiveness.isMobileScreen;

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider);

    //this is the condition to show the grid, only when the user has not selected anything i.e value == -1
    final showDetails = (selectedIconIndex != -1) && !isMobile;

    return AnimatedContainer(
      duration: quarterSeconds,
      height: double.infinity,
      width: showDetails ? iconDetailsWidth : 0,
      decoration: const BoxDecoration(
        color: appColor,
      ),

      // this here is to prevent overflow errors when opening up the side bar
      child: AnimatedSwitcher(
        duration: quarterSeconds,
        child: showDetails
            ? IconDetails(
                key: ValueKey(selectedIconIndex),
              )
            : const SizedBox(),
        transitionBuilder: (child, animation) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
      ),
    );
  }
}
