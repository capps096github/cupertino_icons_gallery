// Project imports:
import 'package:flutter/cupertino.dart';

import '../../gallery_exporter.dart';
import '../gallery_icon.dart';
import '../icon_providers.dart';
import 'icon_tile.dart';

class IconTilesView extends ConsumerWidget {
  const IconTilesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    /// State Provider for all subjects
    final List<GalleryIcon> galleryIconList =
        ref.watch(allIconsProvider.state).state;

    // provides the length of the subjects list
    final int totalIconCount = galleryIconList.length;

    // check if we have icons
    final hasIcons = totalIconCount > 0;

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider.state).state;

    //
    return hasIcons
        ? SliverLayoutBuilder(
            builder: (BuildContext context, constraints) {
              // base on the constraints, we will decide the gridCrossAxisCount
              //3 on mobile, 6 on tablet and 9 on desktop
              final currentWidth = constraints.asBoxConstraints().maxWidth;

              final smallestMobile = currentWidth < 300;
              final isSmallMobile = (currentWidth < 400);
              final isMediumMobile =
                  (currentWidth >= 400 && currentWidth < 600);
              final isLargeMobile = (currentWidth >= 600 && currentWidth < 800);
              final isSmallTablet =
                  (currentWidth >= 800 && currentWidth < 1000);
              final isLargeTablet =
                  (currentWidth >= 1000 && currentWidth < 1200);
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
                    // get the subject at a given index in the list
                    final selectedIcon = galleryIconList[pointsIndex];

                    // is selected icon index equal to the index of the subject
                    final isSelected = (selectedIconIndex == pointsIndex);

                    final iconTextColor =
                        isSelected ? galleryWhite : galleryBlack;
                    final iconBackColor =
                        isSelected ? galleryBlack : galleryWhite;
                    final selectedColor =
                        isSelected ? galleryBlue : galleryWhite;

                    return IconTile(
                      showText: !smallestMobile,
                      text: selectedIcon.name,
                      icon: selectedIcon.icon,
                      textColor: iconTextColor,
                      selectedColor: selectedColor,
                      squareColor: iconBackColor,
                      onTap: () {
                        //update the selected value provider
                        // first check if its selected then update the value to -1 else update the value to the index of the subject
                        if (isSelected) {
                          ref.watch(selectedIconIndexProvider.notifier).state =
                              -1;
                        } else {
                          ref.watch(selectedIconIndexProvider.notifier).state =
                              pointsIndex;
                        }

                        ref.watch(selectedGalleryIconProvider.notifier).state =
                            selectedIcon;
                      },
                    );
                  },
                  childCount: totalIconCount,
                ),
              );
            },
          )
        : SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  CupertinoIcons.doc_text_search,
                  color: galleryColor,
                  size: 128,
                ),
                Center(
                  child: Text(
                    'No icons found',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: galleryColor,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
