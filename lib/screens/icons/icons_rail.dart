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
      duration: oneSecond,
      height: double.infinity,
      curve: Curves.easeInOutQuint,
      width: showDetails ? iconDetailsWidth : 0,
      decoration: const BoxDecoration(
        borderRadius: borderRadius8,
      ),
      // this here is to prevent overflow errors when opening up the side bar
      child: AnimatedSwitcher(
        duration: quarterSeconds,
        child: showDetails ? const IconDetails() : const SizedBox(),
        transitionBuilder: (child, animation) {
          final tweenAnimation = Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOutQuint));

          return SlideTransition(
            position: animation.drive(tweenAnimation),
            child: child,
          );
        },
      ),
    );
  }
}
