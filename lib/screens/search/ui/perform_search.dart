// Project imports:
import '../../../app_exporter.dart';
import '../../icons/grid/icon_tiles_view.dart';
import '../../icons/icon_providers.dart';
import '../../icons/icons_rail.dart';
import 'animated_search_texts.dart';

///PerformSearch class creation
class PerformSearch extends ConsumerWidget {
  ///[PerformSearch] constructor
  const PerformSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// State Provider for all subjects
    final galleryIconList = ref.watch(allIconsProvider);

    return Row(
      children: [
        Expanded(
          child: CustomScrollView(
            key: const PageStorageKey(
                PageStorageKeys.cupertinoIconsSuggestionsKey,),
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(8),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AnimatedSearchTexts(),
                      SvgPicture.asset(
                        'images/search.svg',
                        height: svgImageSize,
                        width: svgImageSize,
                        colorFilter:
                            const ColorFilter.mode(appColor, BlendMode.srcATop),
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SectionTitle(
                  sectionText: 'All Icons',
                  backgroundColor: galleryBlack,
                ),
              ),

              // icons
              SliverPadding(
                padding: const EdgeInsets.all(8),
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
