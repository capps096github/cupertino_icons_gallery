// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../../app_exporter.dart';
import '../filter/filter_provider.dart';
import '../icon_providers.dart';

///IconGridIntro class
class IconGridIntro extends StatelessWidget {
  ///[IconGridIntro] constructor
  const IconGridIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            //

            const SectionTitle(
              sectionText: 'In the Gallery',
              backgroundColor: galleryBlack,
            ),

            // title
            Consumer(
              builder: (context, ref, child) {
                /// State Provider for all subjects
                final galleryIconList = ref.watch(allIconsProvider);

                // provides the length of the subjects list
                final totalIconCount = galleryIconList.length;

                // check if we have icons
                final hasIcons = totalIconCount > 0;

                return RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: hasIcons ? 'Explore  ' : '',
                    style: const TextStyle(
                      color: appColor,
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: totalIconCount > 2
                            ? '${totalIconCount - 2}+ '
                            : '$totalIconCount',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: galleryBlack,
                        ),
                      ),
                      const TextSpan(
                        text: ' Cupertino Icons',
                      ),
                    ],
                  ),
                );
              },
            ),

            const VerticalSpacing(of: 8),

            const SectionTitle(
              sectionText: 'Keynote',
              backgroundColor: galleryBlack,
            ),

            // subtitle
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'This application is an Open Source Project ',
                style: const TextStyle(
                  color: appColor,
                  height: 1.5,
                  fontSize: 16,
                ),
                children: [
                  const TextSpan(
                    text: 'Built with ❤️ by ',
                  ),
                  linkTextSpan(
                    text: 'Brian Cephas',
                    link: xephasTwitter,
                  ),
                  const TextSpan(
                    text: ' in ',
                  ),
                  linkTextSpan(
                    text: 'Flutter',
                    link: flutterLink,
                  ),
                  const TextSpan(
                    text: ' for the ',
                  ),
                  linkTextSpan(
                    text: 'Flutter Community.',
                    link: flutterCommunityLink,
                  ),
                ],
              ),
            ),

            const SectionTitle(
              sectionText: 'Open Source',
              backgroundColor: galleryPink,
            ),

            // subtitle
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  color: galleryPink,
                  height: 1.5,
                  fontSize: 16,
                ),
                children: [
                  const TextSpan(
                    text: 'This app is now available on ',
                  ),
                  linkTextSpan(
                    text: 'Github (capps096github/cupertino_icons_gallery)',
                    link: repoLink,
                  ),
                  const TextSpan(
                    text:
                        '. Feel free to clone, fork, star and use it in your own projects and above all contribute to it. Thanks.',
                  ),
                ],
              ),
            ),

            const SectionTitle(sectionText: 'Hints'),

            const GridHint(
              icon: CupertinoIcons.hand_draw,
              text:
                  'Tap on an Icon to View its Source Code for use in your Flutter App.',
            ),
            const GridHint(
              icon: Icons.tune,
              text:
                  'Use the rail on the left to filter the icons by their Alphabetical Letters.',
            ),
            const GridHint(
              icon: CupertinoIcons.search,
              text: 'Search for an Icon by typing in the search bar above.',
            ),

            const VerticalSpacing(of: 20),

            const IconsTitle(),
          ],
        ),
      ),
    );
  }
}

///GridHint class
class GridHint extends StatelessWidget {
  ///[GridHint] constructor
  const GridHint({
    required this.icon,
    required this.text,
    super.key,
  });

  /// icon
  final IconData icon;

  /// text
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
              color: appColor,
            ),
          ),
          Flexible(
            child: Text(
              text,
              softWrap: true,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: appColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///IconsTitle class
class IconsTitle extends StatelessWidget {
  ///[IconsTitle] constructor
  const IconsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        // get the current filter index
        final currentFilterIndex = ref.watch(selectedFilterIndexProvider);

        // get the current filter alphabet
        final currentFilterAlphabet = alphabetFilters[currentFilterIndex];

        // all selected
        final isAllSelected =
            currentFilterIndex == 0 || currentFilterIndex == -1;

        return SectionTitle(
          sectionText: isAllSelected
              ? 'All Icons'
              : 'Icons starting with ${currentFilterAlphabet.toLowerCase()}',
          backgroundColor: galleryBlack,
        );
      },
    );
  }
}
