// Project imports:
import 'package:flutter/cupertino.dart';

import '../../gallery_exporter.dart';
import '../icon_providers.dart';

class IconGridIntro extends StatelessWidget {
  const IconGridIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            //

            const SectionTitle(
              sectionText: "In the Gallery",
              backgroundColor: galleryBlack,
            ),

            // title
            Consumer(
              builder: (context, ref, child) {
                /// State Provider for all subjects
                final List<GalleryIcon> galleryIconList =
                    ref.watch(allIconsProvider.state).state;

                // provides the length of the subjects list
                final int totalIconCount = galleryIconList.length;

                // check if we have icons
                final hasIcons = totalIconCount > 0;

                return RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: hasIcons ? 'Explore  ' : '',
                    style: GoogleFonts.spartan(
                      color: galleryColor,
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
              sectionText: "Keynote",
              backgroundColor: galleryBlack,
            ),

            // subtitle
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'This application is an Open Source Project ',
                style: GoogleFonts.spartan(
                  color: galleryColor,
                  height: 1.5,
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
              sectionText: "Open Source",
              backgroundColor: galleryPink,
            ),

            // subtitle
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.spartan(
                  color: galleryPink,
                  height: 1.5,
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

            const SectionTitle(sectionText: "Hint"),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    CupertinoIcons.hand_draw,
                    color: galleryColor,
                  ),
                ),
                Flexible(
                  child: Text(
                    "Tap on an Icon to View its Source Code for use in your Flutter App.",
                    softWrap: true,
                    style: GoogleFonts.spartan(
                      fontWeight: FontWeight.bold,
                      color: galleryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

            const SectionTitle(
              sectionText: "Icons",
              backgroundColor: galleryBlack,
            ),
          ],
        ),
      ),
    );
  }
}
