import '../../gallery_exporter.dart';
import '../gallery_icon.dart';
import '../icon_providers.dart';
import 'icon_square.dart';

final _controller = ScrollController();

class IconGridView extends ConsumerWidget {
  const IconGridView({
    Key? key,
    required this.totalIconCount,
    required this.galleryIconList,
    required this.selectedIconIndex,
  }) : super(key: key);

  final int totalIconCount;
  final List<GalleryIcon> galleryIconList;
  final int selectedIconIndex;

  @override
  Widget build(BuildContext context, ref) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // base on the constraints, we will decide the gridCrossAxisCount
        //3 on mobile, 6 on tablet and 9 on desktop
        final currentWidth = constraints.maxWidth;

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

        return GalleryScrollbar(
          controller: _controller,
          child: GridView.builder(
            controller: _controller,
            key: const PageStorageKey(PageStorageKeys.cupertinoIconsKey),
            shrinkWrap: true,
            padding: const EdgeInsets.all(8.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridCrossAxisCount,
              childAspectRatio: 1.0,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: totalIconCount,
            itemBuilder: (BuildContext context, int pointsIndex) {
              // get the subject at a given index in the list
              final selectedIcon = galleryIconList[pointsIndex];

              // is selected icon index equal to the index of the subject
              final isSelected = (selectedIconIndex == pointsIndex);

              final iconTextColor = isSelected ? galleryWhite : galleryBlack;
              final iconBackColor = isSelected ? galleryBlack : galleryWhite;

              return IconSquare(
                text: selectedIcon.name,
                icon: selectedIcon.icon,
                textColor: iconTextColor,
                squareColor: iconBackColor,
                onTap: () {
                  //update the selected value provider
                  // first check if its selected then update the value to -1 else update the value to the index of the subject
                  if (isSelected) {
                    ref.watch(selectedIconIndexProvider.notifier).state = -1;
                  } else {
                    ref.watch(selectedIconIndexProvider.notifier).state =
                        pointsIndex;
                  }

                  ref.watch(selectedGalleryIconProvider.notifier).state =
                      selectedIcon;
                },
              );
            },
          ),
        );
      },
    );
  }
}
