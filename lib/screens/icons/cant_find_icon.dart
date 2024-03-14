// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../gallery_exporter.dart';

class CantFindIcon extends StatelessWidget {
  const CantFindIcon({
    required this.errorText, super.key,
  });

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          CupertinoIcons.doc_text_search,
          color: galleryBlack,
          size: 128,
        ),
        Center(
          child: Text(
            errorText,
            style: GoogleFonts.leagueSpartan(
              fontWeight: FontWeight.bold,
              color: galleryBlack,
              fontSize: 24,
            ),
          ),
        ),
      ],
    );
  }
}
