import '../gallery_exporter.dart';
import 'gallery_icon.dart';
import 'gallery_icons_data.dart';

///Provides the Current Page  for the Essentials Page
final selectedIconIndexProvider = StateProvider<int>((ref) {
  return 0;
});

///This is a list of all icons and can be filtered by the user
final allIconsProvider = StateProvider<List<GalleryIcon>>((ref) {
// Sort the icons in ascending order by name
  cupertinoIcons.sort((a, b) => a.name.compareTo(b.name));

  return cupertinoIcons;
});
