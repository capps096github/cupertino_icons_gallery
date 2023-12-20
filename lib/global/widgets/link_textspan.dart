// Flutter imports:
import 'package:flutter/gestures.dart';

// Project imports:
import '../../gallery_exporter.dart';

TextSpan linkTextSpan({
  required String text,
  required String link,
  Color linkColor = galleryColor,
}) {
  return TextSpan(
    text: text,
    recognizer: TapGestureRecognizer()
      ..onTap = () async {
        await linkLauncher(link);
      },
    style: TextStyle(
      color: linkColor,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      height: 1.5,
    ),
  );
}
