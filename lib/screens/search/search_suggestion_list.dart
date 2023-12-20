// Project imports:
import '../../gallery_exporter.dart';
import '../icons/cant_find_icon.dart';
import '../icons/details/icon_details.dart';
import '../icons/grid/credits.dart';
import '../icons/grid/icon_tiles_view.dart';
import '../icons/icon_providers.dart';

class SearchSuggestionList extends ConsumerWidget {
  const SearchSuggestionList({
    super.key,
    required this.query,
  });
  final String query;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// State Provider for all subjects
    final searchList = ref.watch(searchIconsProvider(query));

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider);

    // check if we are on mobile
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isMobile = responsiveness.isMobileScreen;

    // show Detail here only if we are onMobile
    final showDetails = (selectedIconIndex != -1) && isMobile;

    return searchList.isNotEmpty
        ? Container(
            constraints: const BoxConstraints(minWidth: sideBarDesktopWidth),
            child: AnimatedSwitcher(
              duration: twoHundredMilliseconds,
              reverseDuration: twoHundredMilliseconds,
              switchInCurve: Curves.fastOutSlowIn,
              transitionBuilder: (child, animation) {
                return SlideFadeTransition(
                  animation: animation,
                  child: child,
                );
              },
              child: (!showDetails)
                  ? CustomScrollView(
                      slivers: [
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: IconTilesView(
                            galleryIconList: searchList,
                            searchQuery: query,
                          ),
                        ),

                        // app credits
                        const GridCredits(),
                      ],
                    )
                  : const IconDetails(),
            ),
          )
        : CantFindIcon(errorText: 'Icon "$query" not found');
  }
}
