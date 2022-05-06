import '../../gallery_exporter.dart';
import '../icon_providers.dart';
import 'details_appbar.dart';
import 'icon_code_snippet.dart';

class IconDetails extends ConsumerWidget {
  const IconDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // selectedIcon
    final selectedGalleryIcon =
        ref.watch(selectedGalleryIconProvider.state).state;

    final largeCodeSnippet = '''
Icon(
  CupertinoIcons.${selectedGalleryIcon.name},
),
''';

    final smallCodeSnippet = selectedGalleryIcon.name;

    return Scaffold(
      backgroundColor: detailsColor,
      appBar: detailsAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpandedScrollingColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                selectedGalleryIcon.icon,
                color: detailsTextColor,
                size: 128,
              ),
            ),
            const Spacer(),
            const VerticalSpacing(of: 10),
            Text(
              'Use in Code',
              style: GoogleFonts.jetBrainsMono(
                color: detailsTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const VerticalSpacing(of: 8),
            // this is a container that will display a code snippet for the icon with an option to copy it
            // to the clipboard
            IconCodeSnippet(codeSnippet: largeCodeSnippet),

            const VerticalSpacing(of: 20),

            Text(
              'Flutter ID',
              style: GoogleFonts.jetBrainsMono(
                color: detailsTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            IconCodeSnippet(codeSnippet: smallCodeSnippet),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
