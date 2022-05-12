// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../gallery_exporter.dart';

class CantFindIcon extends StatelessWidget {
  const CantFindIcon({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          CupertinoIcons.doc_text_search,
          color: galleryColor,
          size: 128,
        ),
        Center(
          child: Text(
            errorText,
            style: GoogleFonts.spartan(
              fontWeight: FontWeight.bold,
              color: galleryColor,
              fontSize: 24,
            ),
          ),
        ),
      ],
    );
  }
}
