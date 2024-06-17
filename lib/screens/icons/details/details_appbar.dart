// Project imports:
import '../../../app_exporter.dart';
import '../icon_providers.dart';

///[detailsAppbar] is the appbar for the details screen
AppBar detailsAppbar() {
//
  return AppBar(
    backgroundColor: appColor,
    leading: Padding(
      padding: padding8,
      child: Container(
        decoration: const BoxDecoration(
          color: galleryPink,
          borderRadius: borderRadius8,
        ),
        child: Consumer(
          builder: (context, ref, _) {
            return CloseButton(
              color: detailsTextColor,
              onPressed: () {
                // reset the current value to -1
                ref.watch(selectedIconIndexProvider.notifier).state = -1;
              },
            );
          },
        ),
      ),
    ),
    automaticallyImplyLeading: false,
    title: Consumer(
      builder: (context, ref, _) {
        // selectedIcon
        final selectedGalleryIcon = ref.watch(selectedGalleryIconProvider);

        return Text(
          selectedGalleryIcon.name,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 18,
            color: detailsTextColor,
          ),
        );
      },
    ),
    actions: const [
      //  actions like share will be here
    ],
  );
}
