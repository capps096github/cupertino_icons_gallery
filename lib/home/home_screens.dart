// Project imports:
import '../gallery_exporter.dart';
import 'navbar/exporter.dart';

class HomeScreens extends ConsumerWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navBarIndex = ref.watch(selectedNavBarIndexProvider.state).state;

    return PageTransitionSwitcher(
      transitionBuilder: (child, animation, secondaryAnimation) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
          fillColor: galleryTransparent,
        );
      },
      duration: halfSeconds,
      child: navbarIcons[navBarIndex].bodyWidget,
    );
  }
}
