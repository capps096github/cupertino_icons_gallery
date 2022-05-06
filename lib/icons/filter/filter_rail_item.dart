// Flutter imports:

// Project imports:
import '../../gallery_exporter.dart';
import '../icon_providers.dart';

class FilterRailItem extends ConsumerWidget {
  const FilterRailItem({
    required this.filterAlphabet,
    required this.filterIndex,
    this.textColor,
    this.backColor,
    Key? key,
  }) : super(key: key);

  final String filterAlphabet;

// index, and this will be used to com[pare with the nav bar index to detect the selected item
  final int filterIndex;

  // text and background color
  final Color? textColor, backColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // all selected
    final isAllSelected = (filterIndex == 0 || filterIndex == -1);

    // tooltip
    final tooltip = isAllSelected
        ? 'All Cupertino Icons'
        : "Cupertino Icons starting with ${filterAlphabet.toLowerCase()}";

    // access the value stored at the current page gradeValue provider
    final selectedFilterIndex =
        ref.watch(selectedFilterIndexProvider.state).state;

    bool isSelected = (selectedFilterIndex == filterIndex);

    const iconColor = galleryWhite;
    final backgroundColor = isSelected ? galleryBlue : galleryTransparent;

// text style for the rail item
    final railTextStyle = GoogleFonts.spartan(
      fontWeight: isSelected ? FontWeight.w700 : null,
      fontSize: 16,
      color: iconColor,
    );

    return AnimatedContainer(
      duration: quarterSeconds,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(16.0),
      child: Tooltip(
        message: tooltip,
        textStyle: const TextStyle(color: iconColor),
        decoration: BoxDecoration(
          color: galleryBlue,
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: () {
            ref.watch(selectedFilterIndexProvider.notifier).state = filterIndex;

            // reset the selected icon index too
            ref.watch(selectedIconIndexProvider.notifier).state = -1;
          },
          child: Text(
            filterAlphabet,
            textAlign: TextAlign.center,
            style: railTextStyle,
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
