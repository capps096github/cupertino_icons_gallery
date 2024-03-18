// Project imports:
import '../gallery_exporter.dart';
///GalleryError class
class GalleryError extends StatelessWidget {
  ///This widget displays Erro Messages for our App
  const GalleryError({required this.errorText, super.key});
///[errorText] is the error message
  final String errorText;

  @override
  Widget build(BuildContext context) {
    //TODO add some styling here,
    return ErrorWidget(errorText);
  }
}
