import '../../gallery_exporter.dart';
import '../cant_find_icon.dart';
import '../grid/icon_tiles_view.dart';
import '../icon_providers.dart';


class SearchSuggestionList extends ConsumerWidget {
  const SearchSuggestionList({
    Key? key,
    required this.query,
  }) : super(key: key);
  final String query;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// State Provider for all subjects
    final searchList = ref.watch(allIconsProvider.state).state;

    // final savedHive = ref.watch(savedHiveProvider);

    // Search List from the Hive DB
    // savedHive.search(searchTerm: query);

    // Get a list of searches
    // final searchList = savedHive.searchedResultsList;

    return searchList.isNotEmpty
        ? IconTilesView(galleryIconList: searchList)
        : CantFindIcon(errorText: "Icon $query not found");
  }
}
