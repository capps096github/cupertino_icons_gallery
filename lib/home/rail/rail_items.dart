import '../navbar/exporter.dart';
import 'rail_item.dart';

List<RailItem> topRailItems = [
  ...navbarIcons.map((navbarIcon) => RailItem.fromNavbarIconData(navbarIcon)),
];
