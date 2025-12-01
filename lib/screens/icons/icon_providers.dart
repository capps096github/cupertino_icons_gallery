// Flutter imports:
import 'package:flutter/cupertino.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

// Project imports:
import '../../app_exporter.dart';
import 'filter/filter_provider.dart';
import 'gallery_icons_data.dart';

// Simplified providers using only the most basic patterns

/// Provides the Current Index of the selected icon
final selectedIconIndexProvider = StateProvider<int>((ref) => -1);

/// Provides the currently selected Icon to the app
final selectedGalleryIconProvider = StateProvider<GalleryIcon>(
  (ref) => GalleryIcon(
    icon: CupertinoIcons.circle_grid_hex,
    name: 'Cupertino Icon',
  ),
);

/// Provides the Current Page for the Essentials Page
final selectedFilterIndexProvider = StateProvider<int>((ref) => 0);

/// This is a list of all icons and can be filtered by the user
final allIconsProvider = StateProvider<List<GalleryIcon>>(
  (ref) {
    // Sort the icons in ascending order by name
    cupertinoIcons.sort((a, b) => a.name.compareTo(b.name));

    // access the value stored at the current page gradeValue provider
    final selectedFilterIndex = ref.watch(selectedFilterIndexProvider);

    // all selected
    final allIconsSelected =
        selectedFilterIndex == 0 || selectedFilterIndex == -1;

    // perform filters based on the selected filter index
    if (allIconsSelected) {
      return cupertinoIcons;
    } else {
      return cupertinoIcons
          .where(
            (icon) => icon.name
                .startsWith(alphabetFilters[selectedFilterIndex].toLowerCase()),
          )
          .toList();
    }
  },
);

/// Search icons provider - filters icons based on search query
final StateProviderFamily<List<GalleryIcon>, String> searchIconsProvider =
    StateProvider.family<List<GalleryIcon>, String>(
  (ref, searchQuery) {
    // Sort the icons in ascending order by name
    cupertinoIcons.sort((a, b) => a.name.compareTo(b.name));

    // if the search query is empty return all icons else filter the icons
    if (searchQuery.isEmpty) {
      return cupertinoIcons;
    } else {
      return cupertinoIcons
          .where(
            (galleryIcon) => galleryIcon.name
                .toLowerCase()
                .contains(searchQuery.toLowerCase()),
          )
          .toList();
    }
  },
);
