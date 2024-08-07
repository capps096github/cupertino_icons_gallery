// Flutter imports:

// Project imports:
import '../../../app_exporter.dart';
import '../icon_providers.dart';

///[FilterRailItem] is the rail item for the filter rail
class FilterRailItem extends ConsumerWidget {
  ///[FilterRailItem] constructor
  const FilterRailItem({
    required this.filterAlphabet,
    required this.filterIndex,
    this.textColor,
    this.backColor,
    super.key,
  });

  ///[filterAlphabet] is the alphabet to filter
  final String filterAlphabet;

  ///index, and this will be used to compare with the nav bar index to detect the selected item
  final int filterIndex;

  ///text and background color
  // ignore: avoid_multiple_declarations_per_line
  final Color? textColor, backColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // all selected
    final isAllSelected = filterIndex == 0 || filterIndex == -1;

    // tooltip
    final tooltip = isAllSelected
        ? 'All Cupertino Icons'
        : 'Cupertino Icons starting with ${filterAlphabet.toLowerCase()}';

    // access the value stored at the current page gradeValue provider
    final selectedFilterIndex = ref.watch(selectedFilterIndexProvider);

    final isSelected = (selectedFilterIndex == filterIndex);

    const iconColor = appWhite;
    final backgroundColor = isSelected ? galleryPink : galleryTransparent;

// text style for the rail item
    final railTextStyle = TextStyle(
      fontWeight: isSelected ? FontWeight.w700 : null,
      fontSize: 16,
      color: iconColor,
    );

    return Padding(
      padding: padding2,
      child: Material(
        color: backgroundColor,
        clipBehavior: Clip.antiAlias,
        borderRadius: borderRadius8,
        child: Tooltip(
          message: tooltip,
          textStyle: const TextStyle(color: iconColor),
          decoration: BoxDecoration(
            color: galleryPink,
            borderRadius: BorderRadius.circular(6),
          ),
          child: InkWell(
            splashColor: textColor,
            borderRadius: BorderRadius.circular(6),
            onTap: () {
              ref.watch(selectedFilterIndexProvider.notifier).state =
                  filterIndex;

              // reset the selected icon index too
              ref.watch(selectedIconIndexProvider.notifier).state = -1;
            },
            child: Ink(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: borderRadius8,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  filterAlphabet,
                  textAlign: TextAlign.center,
                  style: railTextStyle,
                  maxLines: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
