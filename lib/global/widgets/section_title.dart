// Project imports:
import '../../gallery_exporter.dart';
///[SectionTitle] is a widget that displays a section title
class SectionTitle extends StatelessWidget {
  ///[SectionTitle] constructor
  const SectionTitle({
    required this.sectionText, super.key,
    this.textColor = galleryWhite,
    this.backgroundColor = galleryColor,
  });
  ///[sectionText] is the text of the section
  final String sectionText;
  ///[textColor] is the color of the text
  final Color textColor;
  ///[backgroundColor] is the color of the background
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 8),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          sectionText,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
