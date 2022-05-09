import '../../../gallery_exporter.dart';
import '../ui/perform_search.dart';
import 'searched_results_list.dart';
import 'searched_terms_list.dart';

///This gets a list of recent searches from the database
class RecentSearchesList extends ConsumerWidget {
  const RecentSearchesList({
    Key? key,
    required this.onRecentTermTapped,
  }) : super(key: key);

  final Function() onRecentTermTapped;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentsHive = ref.watch(recentSearchNotifier);
    final List<RecentSearchItem> recentSearchItems =
        recentsHive.recentSearchItems;

    //
    return recentsHive.hasItems
        ? CustomScrollView(
            slivers: [
              const SectionTitle(sectionText: "Recently Searched Terms"),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Double tap search term to re-search it",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: galleryColor,
                    ),
                  ),
                ),
              ),
              SearchedTermsList(
                recentSearchItemsList: recentSearchItems,
                onPressed: onRecentTermTapped,
              ),
              const SectionTitle(sectionText: "Recently Searched Results"),
              SearchedResultsList(recentSearchItemsList: recentSearchItems),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverToBoxAdapter(
                  child: AppButton(
                    text: "Clear all Recent Searches",
                    icon: Icons.clear_all,
                    onTap: () =>
                        ref.read(recentSearchNotifier).clearRecentSearches(),
                    textColor: galleryWhite,
                    buttonColor: galleryError,
                  ),
                ),
              ),
            ],
          )
        : const PerformSearch();
  }
}
