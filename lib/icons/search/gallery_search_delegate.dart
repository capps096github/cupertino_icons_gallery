// Flutter imports:

// Project imports:
import '../../gallery_exporter.dart';
import '../appbar/title_banner.dart';
import 'search_icons_screen.dart';
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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              // icon
              Icon(
                Icons.noise_aware,
                size: 40,
                color: galleryWhite,
              ),

              // text
              HorizontalSpacing(of: 8),

              // text
              TitleBanner(
                homeTitle: "Cupertino Icons Search",
                showDivider: false,
              ),
            ],
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
                    onPressed: () => query = '',
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
    return SearchIconsScreen(searchQuery: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
//
    return query.isNotEmpty
        ? SearchIconsScreen(searchQuery: query)
        : const PerformSearch();
  }
}
