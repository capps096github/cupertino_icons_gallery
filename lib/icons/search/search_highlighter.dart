import '../../gallery_exporter.dart';

class SearchHighlighter extends StatelessWidget {
  const SearchHighlighter({
    Key? key,
    required this.searchQuery,
    required this.text,
    this.textColor = galleryColor,
    this.textStyle,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
    this.fontSize = 16,
  }) : super(key: key);
  final String? searchQuery;
  
  final String text;
  final Color textColor;
  final TextStyle? textStyle;

  final TextAlign textAlign;

  final int maxLines;

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final textStyleHighlight = textStyle ??
       TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.normal,
          color: textColor,
        );

    return SubstringHighlight(
      text: text,
      term: searchQuery,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textStyle: textStyleHighlight,
      textStyleHighlight: textStyleHighlight.copyWith(
        backgroundColor: galleryBlue,
      ),
    );
  }
}
