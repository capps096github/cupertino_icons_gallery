// Project imports:
import '../../gallery_exporter.dart';
import '../icon_providers.dart';

AppBar detailsAppbar() {
//
  return AppBar(
    backgroundColor: galleryColor,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: galleryPink,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Consumer(builder: (context, ref, _) {
          return CloseButton(
            color: detailsTextColor,
            onPressed: () {
              // reset the current value to -1
              ref.watch(selectedIconIndexProvider.notifier).state = -1;
            },
          );
        }),
      ),
    ),
    automaticallyImplyLeading: false,
    title: Consumer(builder: (context, ref, _) {
      // selectedIcon
      final selectedGalleryIcon =
          ref.watch(selectedGalleryIconProvider.state).state;

      return Text(
        selectedGalleryIcon.name,
        maxLines: 1,
        style: GoogleFonts.spartan(
          fontSize: 18,
          color: detailsTextColor,
        ),
      );
    }),
    actions: const [
      //  actions like share will be here
    ],
  );
}
