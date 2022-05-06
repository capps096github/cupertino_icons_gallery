// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../gallery_exporter.dart';
import '../icon_providers.dart';

class IconFilterChip extends ConsumerWidget {
  const IconFilterChip({
    Key? key,
    required this.index,
    required this.filterText,
  }) : super(key: key);

  final int index;

  final String filterText;

  @override
  Widget build(BuildContext context, ref) {
    // access the value stored at the current page gradeValue provider
    final selectedFilterIndex =
        ref.watch(selectedFilterIndexProvider.state).state;

    bool isSelected = (selectedFilterIndex == index);

    //
    return AnimatedPadding(
      duration: quarterSeconds,
      padding: EdgeInsets.all(isSelected ? 4 : 2),
      child: FilterChip(
        pressElevation: 10,
        label: Text(filterText),
        backgroundColor: galleryWhite,
        avatar: isSelected
            ? const Padding(
                padding: EdgeInsets.all(2.0),
                child: CircleAvatar(
                  backgroundColor: galleryWhite,
                  child: Icon(
                    CupertinoIcons.checkmark_alt,
                    size: 14,
                    color: galleryBlue,
                  ),
                ),
              )
            : null,
        showCheckmark: false,
        selectedColor: galleryBlue,
        labelStyle: TextStyle(
          color: isSelected ? galleryWhite : galleryColor,
        ),
        // selected: isSelected,
        selected: isSelected,
        onSelected: (value) {
          // update the selected filter index
          if (isSelected) {
            ref.watch(selectedFilterIndexProvider.notifier).state = 0;
          } else {
            ref.watch(selectedFilterIndexProvider.notifier).state = index;
          }

          // isSelected
          //     ? context
          //         .read(menuListNotifier)
          //         .setFoodCategory(foodCategories[index])
          //     : context.read(menuListNotifier).resetFoodCategory();
        },
      ),
    );
  }
}
