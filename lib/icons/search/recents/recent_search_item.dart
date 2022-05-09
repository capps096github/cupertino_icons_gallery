import '../../../gallery_exporter.dart';

part 'recent_search_item.g.dart';

@HiveType(typeId: 1)
class RecentSearchItem extends HiveObject {
  @HiveField(0)
  String searchQuery;
  // Hive fields go here
  @HiveField(1)
  GalleryIcon selectedIcon;

  RecentSearchItem({
    required this.searchQuery,
    required this.selectedIcon,
  });
}
