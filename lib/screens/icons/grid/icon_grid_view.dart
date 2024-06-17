// Project imports:
import '../../../app_exporter.dart';
import '../../search/search_container.dart';
import '../icon_providers.dart';
import 'credits.dart';
import 'grid_intro.dart';
import 'icon_tiles_view.dart';

///IconGridView class
class IconGridView extends StatelessWidget {
  ///[IconGridView] constructor
  const IconGridView({super.key});

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

        // container
        const SliverToBoxAdapter(
          child: IconGridIntro(),
        ),

        // tiles
        SliverPadding(
          padding: padding8,
          sliver: Consumer(
            builder: (context, ref, _) {
              /// State Provider for all subjects
              final galleryIconList = ref.watch(allIconsProvider);

              //
              return IconTilesView(galleryIconList: galleryIconList);
            },
          ),
        ),
        const SliverSpacing(of: spacing32),

        // built by
        const GridCredits(),

        const SliverSpacing(of: spacing8),
      ],
    );
  }
}
