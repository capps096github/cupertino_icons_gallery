// Project imports:
import '../../../app_exporter.dart';
import '../../search/search_container.dart';
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
    return const CustomScrollView(
      slivers: [
        // search bar and filter
        SliverAppBar(
          pinned: true,
          title: SearchContainer(),
        ),

        // container
        SliverToBoxAdapter(
          child: IconGridIntro(),
        ),

        // tiles
        SliverPadding(
          padding: padding8,
          sliver: IconTilesView(),
        ),

        SliverSpacing(of: spacing32),

        // built by
        GridCredits(),

        SliverSpacing(of: spacing8),
      ],
    );
  }
}
