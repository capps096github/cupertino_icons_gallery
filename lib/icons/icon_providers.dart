// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../gallery_exporter.dart';
import 'gallery_icon.dart';
import 'gallery_icons_data.dart';

///Provides the Current Index of the selected icon
final selectedIconIndexProvider = StateProvider<int>((ref) {
  return -1;
});

///this provides the currently selected Icon to the app
final selectedGalleryIconProvider = StateProvider<GalleryIcon>((ref) {
  return GalleryIcon(
    icon: CupertinoIcons.circle_grid_hex,
    name: "Cupertino Icon",
  );
});

///This is a list of all icons and can be filtered by the user
final allIconsProvider = StateProvider<List<GalleryIcon>>((ref) {
// Sort the icons in ascending order by name
  cupertinoIcons.sort((a, b) => a.name.compareTo(b.name));

  // return cupertinoIcons;
  return cupertinoIcons;
});


///Provides the Current Page  for the Essentials Page
final selectedFilterIndexProvider = StateProvider<int>((ref) {
  return 0;
});
