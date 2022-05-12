// Project imports:
import '../../../gallery_exporter.dart';
import '../../grid/icon_tiles_view.dart';
import '../../icon_providers.dart';
import '../../icons_rail.dart';
import 'animated_search_texts.dart';

class PerformSearch extends ConsumerWidget {
  const PerformSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    /// State Provider for all subjects
    final galleryIconList = ref.watch(allIconsProvider.state).state;

    return Row(
      children: [
        Expanded(
          child: CustomScrollView(
            key: const PageStorageKey(
                PageStorageKeys.cupertinoIconsSuggestionsKey),
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AnimatedSearchTexts(),
                      SvgPicture.asset(
                        "images/search.svg",
                        height: svgImageSize,
                        width: svgImageSize,
                        color: galleryColor,
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SectionTitle(
                  sectionText: "All Icons",
                  backgroundColor: galleryBlack,
                ),
              ),

              // icons
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: IconTilesView(
                  galleryIconList: galleryIconList,
                ),
              ),
            ],
          ),
        ),
        const IconsRail(),
      ],
    );
  }
}
