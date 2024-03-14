// Project imports:
import '../../../gallery_exporter.dart';
import '../icon_providers.dart';
import 'details_appbar.dart';
import 'icon_code_snippet.dart';

class IconDetails extends ConsumerWidget {
  const IconDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // selectedIcon
    final selectedGalleryIcon = ref.watch(selectedGalleryIconProvider);

    final largeCodeSnippet = '''
Icon(
  CupertinoIcons.${selectedGalleryIcon.name},
),
''';

    final smallCodeSnippet = selectedGalleryIcon.name;

    // iconDataSnippet
    final iconDataSnippet = 'CupertinoIcons.${selectedGalleryIcon.name}';

    return Scaffold(
      backgroundColor: galleryColor,
      appBar: detailsAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ExpandedScrollingColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: detailsColor.withOpacity(.3),
                shape: BoxShape.circle,
              ),
              child: Icon(
                selectedGalleryIcon.icon,
                color: detailsTextColor,
                size: 128,
              ),
            ),
            // this is a container that will display a code snippet for the icon with an option to copy it
            // to the clipboard
            const Spacer(),
            const IconHeader(title: 'Use in Code'),
            IconCodeSnippet(codeSnippet: largeCodeSnippet),

            const VerticalSpacing(of: 10),
            //  e.g to copy CupertinoIcons.brightness_solid at once without having the icon widget around it
            const Spacer(),
            const IconHeader(title: 'Icon Data'),
            IconCodeSnippet(codeSnippet: iconDataSnippet),

            const VerticalSpacing(of: 10),
            // brightness_solid is the name of the icon
            const Spacer(),
            const IconHeader(title: 'Flutter ID'),
            IconCodeSnippet(codeSnippet: smallCodeSnippet),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class IconHeader extends StatelessWidget {
  const IconHeader({
    required this.title, super.key,
  });

// title
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        style: GoogleFonts.leagueSpartan(
          color: detailsTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
