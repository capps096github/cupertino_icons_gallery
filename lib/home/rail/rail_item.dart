import 'package:flutter/material.dart';

import '../navbar/navbar_icon_data.dart';

class RailItem {
  final String label;
  final IconData selectedIcon, unselectedIcon;

  final String? image;
  final String tooltip;

  // onTap
  final VoidCallback? onTap;

  RailItem({
    required this.label,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.tooltip,
    this.onTap,
    this.image,
  });

// fromNavbarIconData
  factory RailItem.fromNavbarIconData(NavbarIconData navbarIcons) {
    return RailItem(
      label: navbarIcons.label,
      selectedIcon: navbarIcons.selectedIcon,
      unselectedIcon: navbarIcons.unselectedIcon,
      tooltip: navbarIcons.tooltip,
    );
  }
}
