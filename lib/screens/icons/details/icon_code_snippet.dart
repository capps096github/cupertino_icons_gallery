// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../../app_exporter.dart';

///IconCodeSnippet class
class IconCodeSnippet extends StatelessWidget {
  ///This widget displays a code snippet for the icon with an option to copy it to the clipboard
  const IconCodeSnippet({
    required this.codeSnippet,
    required this.title,
    super.key,
  });

  ///[codeSnippet] is the code snippet
  final String codeSnippet;

  /// title
  final String title;

  @override
  Widget build(BuildContext context) {
    // this is a container that will display a code snippet for the icon with an option to copy it
    // to the clipboard

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: detailsTextColor,
            borderRadius: BorderRadius.only(
              topLeft: circularRadius6,
              topRight: circularRadius6,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: spacing16,
            vertical: spacing4,
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: appColor,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),

        // code container
        Container(
          // padding: padding8,
          width: double.infinity,
          decoration: BoxDecoration(
            color: detailsColor.withOpacity(.4),
            borderRadius: const BorderRadius.only(
              bottomLeft: circularRadius6,
              bottomRight: circularRadius8,
              topRight: circularRadius6,
            ),
            border: Border.all(
              color: detailsTextColor.withOpacity(.2),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: padding8,
                child: TextSelectionTheme(
                  data: const TextSelectionThemeData(
                    selectionColor: galleryPink,
                  ), // Change this to your desired color
                  child: SelectableText(
                    codeSnippet,
                    style: GoogleFonts.jetBrainsMono(
                      color: detailsTextColor,
                    ),
                  ),
                ),
              ),
              const Spacing(of: spacing8),
              // this is the copy button
              Align(
                alignment: Alignment.bottomRight,
                child: CopyIcon(codeSnippet: codeSnippet),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///[CopyIcon] is a widget that displays a copy icon
class CopyIcon extends StatelessWidget {
  ///[CopyIcon] constructor
  const CopyIcon({
    required this.codeSnippet,
    super.key,
  });

  ///[codeSnippet] is the code snippet
  final String codeSnippet;

  @override
  Widget build(BuildContext context) {
    final snackBar = copyIconSnackbar(context);

    return Container(
      decoration: BoxDecoration(
        color: appWhite.withOpacity(.5),
        borderRadius: const BorderRadius.only(
          bottomRight: circularRadius8,
          topLeft: circularRadius8,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: spacing8,
        vertical: spacing4,
      ),
      child: InkWell(
        // tooltip: 'Copy to clipboard',
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.content_copy_rounded, size: 15, color: detailsTextColor),
            Spacing(of: spacing4),
            Flexible(
              child: Text(
                'Copy Code',
                style: TextStyle(
                  color: detailsTextColor,
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
        onTap: () async {
          // copy the code snippet to the clipboard
          await Clipboard.setData(ClipboardData(text: codeSnippet));

          // show snackbar
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }

  ///Snack bar for feedback after saving
  SnackBar copyIconSnackbar(BuildContext context) {
    return const SnackBar(
      backgroundColor: galleryPink,
      margin: EdgeInsets.all(4),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius8,
      ),
      content: Row(
        children: [
          Icon(
            CupertinoIcons.checkmark_alt_circle_fill,
            color: detailsTextColor,
          ),
          Spacing(of: 10),
          Text(
            'Code snippet copied to clipboard',
            style: TextStyle(color: detailsTextColor),
          ),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      duration: oneSecond,
    );
  }
}
