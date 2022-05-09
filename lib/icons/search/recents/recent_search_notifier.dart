import '../../../gallery_exporter.dart';

final recentSearchNotifier = ChangeNotifierProvider<RecentSearch>((ref) {
  return RecentSearch();
});

//name of the box that stores all the saved results
const recentSearchBoxName = 'cupertino_recent_search';

class RecentSearch extends ChangeNotifier {
  final recentSearchesBox = Hive.box<RecentSearchItem>(recentSearchBoxName);

  String _recentSearchQuery = '';

  /// This is the search query that will appear wen a recent search item is tapped
  String get recentSearchQuery => _recentSearchQuery;

  ///[Length od Box Items]
  int get boxLength => recentSearchesBox.length;

  ///[Wether Box has Items]
  bool get hasItems => recentSearchesBox.isNotEmpty;

  ///This is the list of all `RecentSearchItem Stored in the RecentSearchItemBox`
  List<RecentSearchItem> get recentSearchItems =>
      recentSearchesBox.values.toList();

  RecentSearchItem recentSearchItem(int index) =>
      recentSearchesBox.getAt(index) as RecentSearchItem;

  ///[Adds item the recent searches database too]
  Future<void> addItemToRecentSearches(RecentSearchItem searchItem) async {
    //check if the item is already in the recentSearchItems
    final isItemAlreadyInTheList = recentSearchItems.contains(searchItem);

    // add item to box only if it is not already in the list
    if (!isItemAlreadyInTheList) {
      //add item to the box
      await recentSearchesBox.add(searchItem);
    }

    notifyListeners();
  }

  ///[Remove item from the database too]
  Future<void> removeItemFromRecentSearches(RecentSearchItem searchItem) async {
    await searchItem.delete();
    notifyListeners();
  }

  ///[Clear the Recent Searches list]
  Future<void> clearRecentSearches() async {
    await recentSearchesBox.deleteAll(recentSearchesBox.keys);
    notifyListeners();
  }

  void updateSearchQuery(String searchQuery) {
    _recentSearchQuery = '';
    _recentSearchQuery = searchQuery;
    notifyListeners();
  }
}
