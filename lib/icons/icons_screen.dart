// Project imports:
import '../gallery_exporter.dart';
import 'appbar/icons_appbar.dart';
import 'filter/filter_rail.dart';
import 'grid/icon_grid.dart';
import 'icons_rail.dart';

class CupertinoIconsScreen extends StatelessWidget {
  const CupertinoIconsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this will have a search and filter section too
    return Scaffold(
      appBar: iconsAppBar(),
      key: UniqueKey(),
      extendBody: true,
      body: Row(
        children: const [
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
