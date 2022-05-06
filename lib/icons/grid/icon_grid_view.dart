import '../../gallery_exporter.dart';
import '../filter/icon_filter.dart';
import '../search/search_container.dart';
import 'grid_intro.dart';
import 'icon_tiles_view.dart';

class IconGridView extends StatelessWidget {
  const IconGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    return const CustomScrollView(
      key: PageStorageKey(PageStorageKeys.cupertinoIconsKey),
      slivers: [
        // search bar and filter
        SliverAppBar(
          pinned: true,
          title: SearchContainer(),
        ),

        SliverAppBar(
          floating: true,
          title: IconFilter(),
        ),

        // brief intro
        IconGridIntro(),

        // tiles
        SliverPadding(
          padding: EdgeInsets.all(8.0),
          sliver: IconTilesView(),
        ),
      ],
    );
  }
}
