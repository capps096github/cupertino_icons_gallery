import '../../gallery_exporter.dart';
import '../icon_providers.dart';

AppBar detailsAppbar({required VoidCallback onTap}) {
//
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: detailsTextColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: CloseButton(
          color: detailsColor,
          onPressed: onTap,
        ),
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
        style: GoogleFonts.jetBrainsMono(
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
