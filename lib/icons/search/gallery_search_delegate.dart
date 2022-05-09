import 'package:flutter/cupertino.dart';

import '../../gallery_exporter.dart';
import 'recents/recents_list.dart';
import 'search_suggestion_list.dart';
import 'ui/perform_search.dart';

const _accentColor = galleryWhite;

///This is responsible for configuring all searching in the saved results
class GallerySearchDelegate extends SearchDelegate {
  final String hintText;

  GallerySearchDelegate({
    this.hintText = "Search through the icons",
  }) : super(
          searchFieldLabel: hintText,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          searchFieldStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: galleryWhite,
          ),
        );

  @override
  ThemeData appBarTheme(BuildContext context) {
    return galleryTheme.copyWith(
      primaryColor: galleryColor,
      //  input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(5),
        hintStyle: GoogleFonts.assistant(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: galleryWhite.withOpacity(.5),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: galleryWhite.withOpacity(.5),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: galleryWhite,
          ),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none),
        ),
        isDense: true,
      ),

      //* -- text themes
      textTheme: galleryTheme.textTheme.copyWith().apply(
            fontFamily: GoogleFonts.spartan().fontFamily,
            displayColor: galleryWhite,
            bodyColor: galleryWhite,
          ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: galleryWhite.withOpacity(.4),
        cursorColor: galleryWhite,
      ),
    );
  }

  @override
  PreferredSizeWidget? buildBottom(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(galleryAppbarHeight),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DottedBorder(
            padding: const EdgeInsets.all(4),
            radius: const Radius.circular(10),
            borderType: BorderType.RRect,
            color: galleryWhite,
            child: const Icon(
              CupertinoIcons.rectangle_3_offgrid_fill,
              size: 40,
              color: galleryWhite,
            ),
          ),
        ),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      AnimatedContainer(
        duration: quarterSeconds,
        child: query.isNotEmpty
            ? Consumer(
                builder: (context, ref, child) {
                  return IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Ionicons.close_circle,
                      color: _accentColor,
                    ),
                    onPressed: () {
                      query = '';
                      // ref.watch(recentSearchNotifier).updateSearchQuery('');
                    },
                  );
                },
              )
            : const SizedBox(),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: _accentColor,
      ),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: query.isNotEmpty
          ? SearchSuggestionList(query: query)
          : const PerformSearch(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final updatedSearchQuery =
            ref.watch(recentSearchNotifier).recentSearchQuery;

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: query.isNotEmpty
              ? SearchSuggestionList(query: query)
              : RecentSearchesList(
                  onRecentTermTapped: () => query = updatedSearchQuery,
                ),
        );
      },
    );
  }
}
