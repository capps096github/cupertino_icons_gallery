// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../gallery_exporter.dart';

class IconCodeSnippet extends StatelessWidget {
  const IconCodeSnippet({
    Key? key,
    required this.codeSnippet,
  }) : super(key: key);

  final String codeSnippet;
  @override
  Widget build(BuildContext context) {
    // this is a container that will display a code snippet for the icon with an option to copy it
    // to the clipboard

    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: detailsColor.withOpacity(.4),
            borderRadius: BorderRadius.circular(6),
          ),
          child: SelectableText(
            codeSnippet,
            style: GoogleFonts.jetBrainsMono(
              color: detailsTextColor,
            ),
          ),
        ),

        // this is the copy button
        CopyIcon(codeSnippet: codeSnippet),
      ],
    );
  }
}

class CopyIcon extends StatelessWidget {
  const CopyIcon({
    Key? key,
    required this.codeSnippet,
  }) : super(key: key);

  final String codeSnippet;

  @override
  Widget build(BuildContext context) {
    final snackBar = copyIconSnackbar(context);

    return IconButton(
      tooltip: "Copy to clipboard",
      icon: const Icon(Icons.content_copy, color: detailsTextColor),
      onPressed: () async {
        // copy the code snippet to the clipboard
        await Clipboard.setData(ClipboardData(text: codeSnippet));

        // show snackbar
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }

  ///Snack bar for feedback after saving
  SnackBar copyIconSnackbar(BuildContext context) {
    return SnackBar(
      backgroundColor: galleryPink,
      margin: const EdgeInsets.all(4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      content: Row(
        children: const [
          Icon(
            CupertinoIcons.checkmark_alt_circle_fill,
            color: detailsTextColor,
          ),
          HorizontalSpacing(of: 10),
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
