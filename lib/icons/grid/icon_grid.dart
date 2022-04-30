import 'package:flutter/scheduler.dart';

import '../../gallery_exporter.dart';
import '../gallery_icon.dart';
import '../icon_providers.dart';
import 'icon_details.dart';
import 'icon_square.dart';

class IconGrid extends ConsumerWidget {
  const IconGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //time dilation for the animation
    timeDilation = 2.0;

    /// State Provider for all subjects
    final List<GalleryIcon> galleryIconList =
        ref.watch(allIconsProvider.state).state;

    // provides the length of the subjects list
    final int totalIconCount = galleryIconList.length;

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider.state).state;

    //this is the condition to show the grid, only when the user has not selected anything i.e value == -1
    final showGrid = (selectedIconIndex == -1);

    // check if we are on mobile or desktop
    final isMobile = GalleryResponsive.isMobile(context);

    // if we are on tablet
    final isTablet = GalleryResponsive.isTablet(context);

    final int gridCrossAxisCount = isMobile ? 3 : (isTablet ? 6 : 9);

    final iconTextColor = showGrid ? galleryWhite : galleryBlack;
    final iconBackColor = showGrid ? galleryBlack : galleryWhite;

// maintain scroll position, set the width for the icon details, even on tap, edit it so that it only goes to next page if we are on Mobile and on side for tablet and desktop

    return AnimatedSwitcher(
      duration: aHundredMilliseconds,
      child: AnimatedSwitcher(
        key: ValueKey(selectedIconIndex),
        duration: twoHundredMilliseconds,
        reverseDuration: twoHundredMilliseconds,
        switchInCurve: Curves.fastOutSlowIn,
        child: showGrid
            ? GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridCrossAxisCount,
                ),
                itemCount: totalIconCount,
                itemBuilder: (BuildContext context, int pointsIndex) {
                  // get the subject at a given index in the list
                  final selectedIcon = galleryIconList[pointsIndex];

                  return IconSquare(
                    text: selectedIcon.name,
                    icon: selectedIcon.icon,
                    textColor: iconTextColor,
                    squareColor: iconBackColor,
                    onTap: () {
                      //update the selected value provider
                      ref.watch(selectedIconIndexProvider.notifier).state =
                          (pointsIndex);
                    },
                  );
                },
              )
            : IconDetails(
                onTap: () {
                  // reset the current value to -1
                  ref.watch(selectedIconIndexProvider.notifier).state = -1;
                },
              ),
        transitionBuilder: (child, animation) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
      ),
    );
  }
}
