// Project imports:
import '../../gallery_exporter.dart';

class SearchHighlighter extends StatelessWidget {
  const SearchHighlighter({
    Key? key,
    required this.searchQuery,
    required this.text,
    this.textColor = galleryColor,
    this.textAlign = TextAlign.start,
    this.fontSize = 16,
  }) : super(key: key);
  final String searchQuery;

  final String text;
  final Color textColor;

  final TextAlign textAlign;

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final textStyleHighlight = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: textColor,
    );

    // check if we are on mobile
    final isMobile = GalleryResponsive.isMobile(context);

    return SubstringHighlight(
      text: text,
      term: searchQuery,
      textAlign: TextAlign.center,
      maxLines: isMobile ? 1 : 2,
      overflow: TextOverflow.ellipsis,
      textStyle: textStyleHighlight.copyWith(fontSize: 14),
      textStyleHighlight: textStyleHighlight.copyWith(
        backgroundColor: galleryPink,
        color: galleryWhite,
      ),
    );
  }
}
