// Flutter imports:
import 'package:flutter/gestures.dart';

// Project imports:
import '../../app_exporter.dart';

///[linkTextSpan] is a TextSpan with a link
TextSpan linkTextSpan({
  required String text,
  required String link,
  Color linkColor = appColor,
}) {
  return TextSpan(
    text: text,
    recognizer: TapGestureRecognizer()
      ..onTap = () async {
        await linkLauncher(link);
      },
    style: GoogleFonts.urbanist(
      color: linkColor,
      decorationColor: linkColor,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      fontSize: 12.5,
    ),
  );
}
