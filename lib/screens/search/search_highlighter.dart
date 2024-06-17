// Project imports:
import '../../app_exporter.dart';

///SearchHighlighter class creation
class SearchHighlighter extends ConsumerWidget {
  ///[SearchHighlighter] constructor
  const SearchHighlighter({
    required this.searchQuery,
    required this.text,
    super.key,
    this.textColor = appColor,
    this.textAlign = TextAlign.start,
    this.fontSize = 16,
  });

  ///searchQuery string
  final String searchQuery;

  ///text string
  final String text;

  ///textColor
  final Color textColor;

  ///textAlign
  final TextAlign textAlign;

  ///
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyleHighlight = GoogleFonts.urbanist(
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
        color: appWhite,
      ),
    );
  }
}
