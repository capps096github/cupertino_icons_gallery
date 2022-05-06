// Flutter imports:
import 'package:flutter/cupertino.dart';

class NavbarIconData {
  final IconData selectedIcon, unselectedIcon;
  final String label, tooltip;

// this will be the widget rendered when the icon is clicked
  final Widget bodyWidget;

  NavbarIconData({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.label,
    required this.tooltip,
    required this.bodyWidget,
  });
}
