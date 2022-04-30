import '../../gallery_exporter.dart';

class NavbarIcon extends StatelessWidget {
  static const nominalExtent = Size(64, 64);
  const NavbarIcon({
    Key? key,
    required this.isSelected,
    required this.onPressed,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.label,
    required this.tooltip,
  }) : super(key: key);

  final bool isSelected;
  final VoidCallback onPressed;
  final IconData selectedIcon, unselectedIcon;
  final String label, tooltip;

  @override
  Widget build(BuildContext context) {
    const _radius = 25;

    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onPressed,
      child: AnimatedSwitcher(
        duration: quarterSeconds,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Tooltip(
              message: tooltip,
              child: Center(
                child: AnimatedContainer(
                  key: ValueKey(isSelected),
                  duration: navbarDuration,
                  constraints:
                      BoxConstraints.tight(const Size.square(_radius * 2)),
                  decoration: ShapeDecoration(
                    color: isSelected ? colorScheme.onPrimary : galleryTransparent,
                    shape: const CircleBorder(),
                  ),
                  child: Icon(
                    isSelected ? selectedIcon : unselectedIcon,
                    color: isSelected
                        ? colorScheme.primary
                        : colorScheme.onPrimary.withOpacity(.8),
                  ),
                ),
              ),
            ),
            if (!isSelected)
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w900,
                    color: colorScheme.background.withOpacity(.8),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
