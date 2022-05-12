// Project imports:
import '../../../gallery_exporter.dart';
import '../search_container.dart';

///This displays animated Search Texts
class AnimatedSearchTexts extends StatelessWidget {
  const AnimatedSearchTexts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: AnimatedTextKit(
        animatedTexts: searchTexts
            .map((word) => buildTypewriterAnimatedText(word))
            .toList(),
        onTap: null,
      ),
    );
  }

  TypewriterAnimatedText buildTypewriterAnimatedText(String text) {
    return TypewriterAnimatedText(
      text,
      textAlign: TextAlign.center,
      speed: const Duration(milliseconds: 80),
      cursor: '|',
      curve: Curves.easeIn,
      textStyle: GoogleFonts.spartan(
        color: galleryColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
