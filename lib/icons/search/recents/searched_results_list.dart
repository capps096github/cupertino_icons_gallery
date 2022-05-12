import '../../../gallery_exporter.dart';
import '../../grid/icon_tile.dart';

// TODO: Start here and make the recent results list appear on the list
///This returns a list of recently searched results
class SearchedResultsList extends ConsumerWidget {
  const SearchedResultsList({Key? key, required this.recentSearchItemsList})
      : super(key: key);
  final List<RecentSearchItem> recentSearchItemsList;

  @override
  Widget build(BuildContext context, ref) {
    return SliverLayoutBuilder(
      builder: (BuildContext context, constraints) {
        // base on the constraints, we will decide the gridCrossAxisCount
        //3 on mobile, 6 on tablet and 9 on desktop
        final currentWidth = constraints.asBoxConstraints().maxWidth;

        final smallestMobile = currentWidth < 300;
        final isSmallMobile = (currentWidth < 400);
        final isMediumMobile = (currentWidth >= 400 && currentWidth < 600);
        final isLargeMobile = (currentWidth >= 600 && currentWidth < 800);
        final isSmallTablet = (currentWidth >= 800 && currentWidth < 1000);
        final isLargeTablet = (currentWidth >= 1000 && currentWidth < 1200);
        // final isDesktop = (currentWidth >= 1200);

        // gridCrossAxisCount
        final gridCrossAxisCount = smallestMobile
            ? 2
            : isSmallMobile
                ? 3
                : isMediumMobile
                    ? 4
                    : isLargeMobile
                        ? 5
                        : isSmallTablet
                            ? 6
                            : isLargeTablet
                                ? 8
                                : 9;

        // Re-implementing the above SliverGrid.count example:
        return SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridCrossAxisCount,
            childAspectRatio: 1.0,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int pointsIndex) {
              final selectedIcon =
                  recentSearchItemsList[pointsIndex].selectedIcon;
              final query = recentSearchItemsList[pointsIndex].searchQuery;
              // get the subject at a given index in the list
              // final selectedIcon = galleryIconList[pointsIndex];

              return IconTile(
                pointsIndex: pointsIndex,
                showText: !smallestMobile,
                searchQuery: query,
                isShownInRecentSearch: true,
                selectedIcon: selectedIcon,
                onTap: () {
                  //update the selected value provider
                  // first check if its selected then update the value to -1 else update the value to the index of the subject
                  // if (isSelected) {
                  //   ref.watch(selectedIconIndexProvider.notifier).state = -1;
                  // } else {
                  //   ref.watch(selectedIconIndexProvider.notifier).state =
                  //       pointsIndex;
                  // }

                  // ref.watch(selectedGalleryIconProvider.notifier).state =
                  //     selectedIcon;
                },
              );
            },
            childCount: recentSearchItemsList.length,
          ),
        );
      },
    );
  }
}
