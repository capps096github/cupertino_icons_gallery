import '../../gallery_exporter.dart';
import 'exporter.dart';
import 'navbar_icon.dart';

// Height of the Nav Bar
const double nominalHeight = 60;

class FCNavBar extends ConsumerWidget {
  const FCNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;

    final selectedIndex = ref.watch(selectedNavBarIndexProvider.state).state;

    return Container(
      color: colorScheme.primary,
      height: nominalHeight,
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          navbarIcons.length,
          (index) {
            // get the navbar icon data for the current index
            final navbarIcon = navbarIcons[index];

            // get the current selected index
            return NavbarIcon(
              label: navbarIcon.label,
              tooltip: navbarIcon.tooltip,
              selectedIcon: navbarIcon.selectedIcon,
              unselectedIcon: navbarIcon.unselectedIcon,
              isSelected: (selectedIndex == index),
              onPressed: () {
                ///[Notify Listeners]
                ref.read(selectedNavBarIndexProvider.state).state = index;
              },
            );
          },
        ),
      ),
    );
  }
}
