import '../gallery_exporter.dart';

class GalleryError extends StatelessWidget {
  ///This widget displays Erro Messages for our App
  const GalleryError({Key? key, required this.errorText}) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    //TODO add some styling here, like forwarding the error to the DEvs
    return ErrorWidget(errorText);
  }
}
