// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../gallery_exporter.dart';
import '../icons/icon_providers.dart';
import 'gallery_search_delegate.dart';

final searchTexts = [
  'Search through the Icons',
  'Search by Name',
  'Search by Category',
  'Happy Searching!',
  'Search for a Cupertino Icon',
];

class SearchContainer extends ConsumerWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
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
        margin: const EdgeInsets.all(4),
        constraints: const BoxConstraints(maxWidth: 900),
        decoration: BoxDecoration(
          color: galleryWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.search_circle_fill,
                color: galleryColor,
              ),
            ),
            Expanded(
              child: AnimatedTextKit(
                animatedTexts: searchTexts
                    .map((searchText) => typewriterAnimatedText(searchText, galleryColor))
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
              decoration: BoxDecoration(
                color: galleryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(2.0),
              padding: const EdgeInsets.all(6.0),
              child: const Icon(
                Icons.tune,
                color: galleryWhite,
                semanticLabel: 'filter',
              ),
            ),
          ],
        ),
      ),
    );
  }

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
