import 'package:flutter/cupertino.dart';

import '../../../gallery_exporter.dart';

const _searchColor = galleryColor;

///This returns a list of recently searched terms

class SearchedTermsList extends StatelessWidget {
  const SearchedTermsList({
    required this.recentSearchItemsList,
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final List<RecentSearchItem> recentSearchItemsList;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final RecentSearchItem recentSearchItem =
              recentSearchItemsList[index];

          final query = recentSearchItem.searchQuery;
          return Consumer(
            builder: (context, ref, child) {
              return ListTile(
                leading: const Icon(
                  CupertinoIcons.timer,
                  color: _searchColor,
                ),
                title: Text(
                  query,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 14,
                    color: galleryColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                onTap: () {
                  // Update the Search query on Tap and perform search
                  ref.read(recentSearchNotifier).updateSearchQuery(query);

                  // Calls The recent On Tap
                  onPressed();
                },
                trailing: IconButton(
                  onPressed: () => ref
                      .read(recentSearchNotifier)
                      .removeItemFromRecentSearches(recentSearchItem),
                  icon: const Icon(
                    Icons.close,
                    color: _searchColor,
                  ),
                ),
              );
            },
          );
        },
        childCount: recentSearchItemsList.length,
      ),
    );
  }
}
