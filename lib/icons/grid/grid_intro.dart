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
            Consumer(
              builder: (context, ref, child) {
                /// State Provider for all subjects
                final List<GalleryIcon> galleryIconList =
                    ref.watch(allIconsProvider.state).state;

                // provides the length of the subjects list
                final int totalIconCount = galleryIconList.length;

                return Text(
                  "Explore over $totalIconCount Cupertino icons",
                  style: GoogleFonts.spartan(
                    color: galleryColor,
                  ),
                );
              },
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
