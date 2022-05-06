// Project imports:
import '../gallery_exporter.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.sectionText,
    this.textColor = galleryWhite,
    this.backgroundColor = galleryColor,
  }) : super(key: key);
  final String sectionText;
  final Color textColor, backgroundColor;
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
          ),
        ),
      ),
    );
  }
}
