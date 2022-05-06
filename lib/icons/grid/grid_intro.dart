// Project imports:
import '../../gallery_exporter.dart';
import '../gallery_icon.dart';
import '../icon_providers.dart';

class IconGridIntro extends StatelessWidget {
  const IconGridIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //

            const SectionTitle(
              sectionText: "Hello, Welcome",
              backgroundColor: galleryBlue,
            ),

            // title
            Consumer(
              builder: (context, ref, child) {
                /// State Provider for all subjects
                final List<GalleryIcon> galleryIconList =
                    ref.watch(allIconsProvider.state).state;

                // provides the length of the subjects list
                final int totalIconCount = galleryIconList.length;

                return RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Explore over ',
                    style: GoogleFonts.spartan(
                      color: galleryColor,
                      fontSize: 16,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: '$totalIconCount',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: galleryBlue,
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
              backgroundColor: galleryBlue,
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
                    text: ' for the ',
                  ),
                  linkTextSpan(
                    text: 'Flutter',
                    link: flutterLink,
                  ),
                  const TextSpan(
                    text: ' Community. It is now available on ',
                  ),
                  linkTextSpan(
                    text: 'Github (capps096github/cupertino_icons_gallery)',
                    link: repoLink,
                  ),
                  const TextSpan(
                    text:
                        '. Feel free to clone it, use it in your own projects and above all contribute to it. Thanks.\n\n',
                  ),
                ],
              ),
            ),

            // This app is Open Source. and you can find the source code on GitHub ,
            // open source is a great way to get your own copy of the code.
            // vie source code on GitHub button
            // feel free to contribute to the project and lets make it even better
            // Built with ❤️ by Cephas Brian for the Flutter Community
          ],
        ),
      ),
    );
  }
}
