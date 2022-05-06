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
      slivers: [
        // search bar and filter
        SliverAppBar(
          backgroundColor: galleryBlue,
          floating: true,
          elevation: 8,
          title: SearchContainer(),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: IconFilter(),
          ),
        ),

        // brief intro
        IconGridIntro(),

        // tiles
        IconTilesView(),
      ],
    );
  }
}
