// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../app_exporter.dart';
import '../icons/icon_providers.dart';
import 'gallery_search_delegate.dart';

///SearchContainer
final searchTexts = [
  'Search through the Icons',
  'Search by Name',
  'Search by Category',
  'Happy Searching!',
  'Search for a Cupertino Icon',
];

///SearchContainer class creation
class SearchContainer extends ConsumerWidget {
  ///[SearchContainer] constructor
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        // search
        showSearch(
          context: context,
          delegate: GallerySearchDelegate(ref: ref),
        );

        // reset the filters
        ref.watch(selectedFilterIndexProvider.notifier).state = 0;

        // reset the selected icon index too
        ref.watch(selectedIconIndexProvider.notifier).state = -1;
      },
      child: Container(
        constraints: const BoxConstraints(maxWidth: 900),
        decoration: const BoxDecoration(
          color: appWhite,
          borderRadius: borderRadius8,
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                CupertinoIcons.search_circle_fill,
                color: appColor,
              ),
            ),
            Expanded(
              child: AnimatedTextKit(
                animatedTexts: searchTexts
                    .map(
                      (searchText) =>
                          typewriterAnimatedText(searchText, appColor),
                    )
                    .toList(),
                onTap: () {
                  // search
                  showSearch(
                    context: context,
                    delegate: GallerySearchDelegate(ref: ref),
                  );

                  // reset the filters
                  ref.watch(selectedFilterIndexProvider.notifier).state = 0;

                  // reset the selected icon index too
                  ref.watch(selectedIconIndexProvider.notifier).state = -1;
                },
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: appColor,
                borderRadius: borderRadius8,
              ),
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(6),
              child: const Icon(
                Icons.tune,
                color: appWhite,
                semanticLabel: 'filter',
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///typewriterAnimatedText object creation
  TypewriterAnimatedText typewriterAnimatedText(String text, Color color) {
    return TypewriterAnimatedText(
      text,
      textAlign: TextAlign.center,
      speed: const Duration(milliseconds: 80),
      cursor: '|',
      curve: Curves.easeIn,
      textStyle: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
