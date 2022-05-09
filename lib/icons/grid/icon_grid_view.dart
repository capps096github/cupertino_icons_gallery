// Project imports:
import '../../gallery_exporter.dart';
import '../icon_providers.dart';
import '../search/search_container.dart';
import 'grid_intro.dart';
import 'icon_tiles_view.dart';

class IconGridView extends StatelessWidget {
  const IconGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    return CustomScrollView(
      key: const PageStorageKey(PageStorageKeys.cupertinoIconsKey),
      slivers: [
        // search bar and filter
        const SliverAppBar(
          pinned: true,
          title: SearchContainer(),
        ),

        // brief intro
        const IconGridIntro(),

        // tiles
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: Consumer(
            builder: (context, ref, _) {
              /// State Provider for all subjects
              final galleryIconList = ref.watch(allIconsProvider.state).state;

              //
              return IconTilesView(galleryIconList: galleryIconList);
            },
          ),
        ),
      ],
    );
  }
}
