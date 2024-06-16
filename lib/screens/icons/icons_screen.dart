// Project imports:
import '../../app_exporter.dart';
import 'appbar/icons_appbar.dart';
import 'filter/filter_rail.dart';
import 'grid/icon_grid.dart';
import 'icons_rail.dart';
///CupertinoIconsScreen class creation
class CupertinoIconsScreen extends StatelessWidget {
///[CupertinoIconsScreen] constructor
  const CupertinoIconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // this will have a search and filter section too
    return Scaffold(
      appBar: iconsAppBar(),
      key: UniqueKey(),
      extendBody: true,
      body: const Row(
        children: [
          // filter rail
          FilterRail(),

          Expanded(child: IconGrid()),
          IconsRail(),
        ],
      ),
    );
  }
}

// tap on an icon to view its details banner or even intro
