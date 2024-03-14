// Flutter imports:

// Project imports:
import '../../gallery_exporter.dart';
import '../icons/appbar/title_banner.dart';
import '../icons/icon_providers.dart';
import 'search_icons_screen.dart';
import 'ui/perform_search.dart';

const _accentColor = galleryWhite;

/// This is responsible for configuring all searching in the saved results
class GallerySearchDelegate extends SearchDelegate {
  /// [GallerySearchDelegate] constructor
  GallerySearchDelegate({
    required this.ref, this.hintText = 'Search through the icons',
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

  /// this is a hint text
  final String hintText;
  /// ref
  final WidgetRef ref;

  @override
  ThemeData appBarTheme(BuildContext context) {
    final galleryTheme = ref.watch(appThemeProvider);
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
            fontFamily: GoogleFonts.leagueSpartan().fontFamily,
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
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isMobile = responsiveness.isMobileScreen;
    return PreferredSize(
      preferredSize: const Size.fromHeight(galleryAppbarHeight),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // icon
              const Icon(
                Icons.noise_aware,
                size: 40,
                color: galleryWhite,
              ),

              // text
              const HorizontalSpacing(of: 8),

              // text
              Flexible(
                child: TitleBanner(
                  homeTitle: isMobile ? 'Search' : 'Cupertino Icons Search',
                ),
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
            ? IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Ionicons.close_circle,
                  color: _accentColor,
                ),
                onPressed: () => query = '',
              )
            : const SizedBox(),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: _accentColor,
          ),
          onPressed: () {
            // unfocus the search field if it is focused then unfocus it
            if (query.isNotEmpty) {
              FocusScope.of(context).unfocus();
            }

            // otherwise close the search
            close(context, '');

            // reset everything
            // reset the selected icon index too
            ref.watch(selectedIconIndexProvider.notifier).state = -1;
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SearchIconsScreen(searchQuery: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
//
    return query.isNotEmpty ? SearchIconsScreen(searchQuery: query) : const PerformSearch();
  }
}
