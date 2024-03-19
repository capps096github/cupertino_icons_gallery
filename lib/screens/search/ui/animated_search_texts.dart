// Project imports:
import '../../../gallery_exporter.dart';
import '../search_container.dart';

///This displays animated Search Texts
class AnimatedSearchTexts extends StatelessWidget {
  ///[AnimatedSearchTexts] constructor
  const AnimatedSearchTexts({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: AnimatedTextKit(
        animatedTexts: searchTexts
            .map(buildTypewriterAnimatedText)
            .toList(),
      ),
    );
  }
///buildTypewriterAnimatedText
  TypewriterAnimatedText buildTypewriterAnimatedText(String text) {
    return TypewriterAnimatedText(
      text,
      textAlign: TextAlign.center,
      speed: const Duration(milliseconds: 80),
      cursor: '|',
      curve: Curves.easeIn,
      textStyle: GoogleFonts.leagueSpartan(
        color: galleryColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
