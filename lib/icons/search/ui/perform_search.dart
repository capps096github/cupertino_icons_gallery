import '../../../gallery_exporter.dart';
import 'animated_search_texts.dart';

class PerformSearch extends StatelessWidget {
  const PerformSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandedScrollingColumn(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AnimatedSearchTexts(),
        SvgPicture.asset(
          "images/search.svg",
          height: svgImageSize,
          width: svgImageSize,
          color: galleryColor,
        ),
      ],
    );
  }
}
