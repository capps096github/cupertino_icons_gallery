// Project imports:
import '../../gallery_exporter.dart';
import '../cant_find_icon.dart';
import '../details/icon_details.dart';
import '../grid/icon_tiles_view.dart';
import '../icon_providers.dart';

class SearchSuggestionList extends ConsumerWidget {
  const SearchSuggestionList({
    Key? key,
    required this.query,
  }) : super(key: key);
  final String query;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// State Provider for all subjects
    final searchList = ref.watch(searchIconsProvider(query).state).state;

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider.state).state;

    // check if we are on mobile
    final isMobile = GalleryResponsive.isMobile(context);

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
                      ],
                    )
                  : const IconDetails(),
            ),
          )
        : CantFindIcon(errorText: 'Icon "$query" not found');
  }
}
