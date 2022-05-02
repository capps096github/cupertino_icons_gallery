// about, icons, github and contributors
import 'package:flutter/cupertino.dart';

import '../../icons/icons_screen.dart';
import '../../theme/colors.dart';
import 'navbar_icon_data.dart';

// list of NavbarIconData
final List<NavbarIconData> navbarIcons = [
  NavbarIconData(
    label: "Cupertino Icons",
    tooltip: "View a list of all Cupertino icons",
    selectedIcon: CupertinoIcons.rectangle_3_offgrid_fill,
    unselectedIcon: CupertinoIcons.rectangle_3_offgrid,
    bodyWidget: const IconScreen(),
  ),
  NavbarIconData(
    label: "Recent Activity",
    tooltip:
        "Check out a the recent activity on Flutter Community Repositories",
    selectedIcon: CupertinoIcons.graph_circle_fill,
    unselectedIcon: CupertinoIcons.graph_circle,
    bodyWidget: Container(
      color: galleryError,
    ),
  ),
  NavbarIconData(
    label: "About",
    tooltip: "View More about this app",
    selectedIcon: CupertinoIcons.question_circle_fill,
    unselectedIcon: CupertinoIcons.question_circle,
    bodyWidget: Container(
      color: galleryWhite,
    ),
  ),
];
