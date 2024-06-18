// Project imports:
import '../../../app_exporter.dart';
import '../../search/search_highlighter.dart';
import '../icon_providers.dart';

// on tap, open up the right page on Desktop and open new page on mobile
///IconTile class creation
class IconTile extends StatefulWidget {
  ///[IconTile] constructor
  const IconTile({
    required this.onTap,
    required this.showText,
    required this.pointsIndex,
    required this.selectedIcon,
    required this.searchQuery,
    super.key,
    this.isShownInRecentSearch = false,
  });

  ///onTap
  final VoidCallback onTap;

  /// showText
  // ignore: avoid_multiple_declarations_per_line
  final bool showText, isShownInRecentSearch;

  ///search query
  final String searchQuery;

  /// index
  final int pointsIndex;

  /// icon
  final GalleryIcon selectedIcon;

  @override
  State<IconTile> createState() => _IconTileState();
}

class _IconTileState extends State<IconTile> {
  double elevation = 0;

  ///squareSize
  double squareSize = 120;

  ///textSize
  double textSize = 10;

  ///iconSize
  double iconSize = 40;

  bool isHovered = false;

  /// border radius
  // final borderRadius = borderRadius8;

  @override
  Widget build(BuildContext context) {
    //text
    final iconName = widget.selectedIcon.name;

    ///Icon of a given subject
    final iconData = widget.selectedIcon.icon;

    return Consumer(
      builder: (context, ref, _) {
        // index of the currently selected icon
        final selectedIconIndex = ref.watch(selectedIconIndexProvider);

        // is selected icon index equal to the index of the subject
        final isSelected = (selectedIconIndex == widget.pointsIndex);

        final iconTextColor = isSelected ? appWhite : appColor;
        final selectedColor = isSelected ? appColor : appWhite;

        return AnimatedContainer(
          duration: halfSeconds,
          // curve: Curves.easeInOutQuint,
          decoration: BoxDecoration(
            borderRadius: borderRadius8,
            border: Border.all(
              color: isHovered ? appColor : appColor.withOpacity(.1),
              width: isHovered ? 2 : .5,
            ),
            color: selectedColor,
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            splashColor: iconTextColor.withOpacity(.5),
            hoverColor: selectedColor.withOpacity(.1),
            highlightColor: appWhite.withOpacity(.5),
            borderRadius: borderRadius8,
            onTap: () async {
              //update the selected value provider
              // first check if its selected then update the value to -1 else update the value to the index of the subject
              if (isSelected) {
                ref.watch(selectedIconIndexProvider.notifier).state = -1;
              } else {
                ref.watch(selectedIconIndexProvider.notifier).state =
                    widget.pointsIndex;
              }

              ref.watch(selectedGalleryIconProvider.notifier).state =
                  widget.selectedIcon;

              // unfocus the search field if it is focused then unfocus it
              if (widget.searchQuery.isNotEmpty) {
                FocusScope.of(context).unfocus();
              }
            },
            onHover: (isHover) {
              setState(() {
                isHovered = isHover;
                isHover ? elevation = 10 : elevation = 0;
              });
            },
            child: Padding(
              padding: padding4,
              child: SizedBox(
                height: squareSize,
                width: squareSize,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      iconData,
                      color: iconTextColor,
                      size: iconSize,
                    ),
                    if (widget.showText) const Spacing(of: 5),

                    // search highlighter
                    if (widget.showText)
                      SearchHighlighter(
                        searchQuery: widget.searchQuery,
                        text: iconName,
                        textColor: iconTextColor,
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
