// Project imports:
import '../../gallery_exporter.dart';

class SearchHighlighter extends ConsumerWidget {
  const SearchHighlighter({
    super.key,
    required this.searchQuery,
    required this.text,
    this.textColor = galleryColor,
    this.textAlign = TextAlign.start,
    this.fontSize = 16,
  });
  final String searchQuery;

  final String text;
  final Color textColor;

  final TextAlign textAlign;

  final double fontSize;

  @override
  Widget build(BuildContext context, ref) {
    final textStyleHighlight = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: textColor,
    );

    // check if we are on mobile
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isMobile = responsiveness.isMobileScreen;

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
