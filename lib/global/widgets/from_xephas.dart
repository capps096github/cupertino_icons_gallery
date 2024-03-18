import '../../gallery_exporter.dart';
///FromXephas class
class FromXephas extends StatelessWidget {
  ///[FromXephas] constructor
  const FromXephas({
    super.key,
    this.textColor = galleryWhite,
    this.builderColor = galleryWhite,
    this.heartColor = galleryError,
  });
///[textColor] is the color of the text
  final Color textColor;
  ///[builderColor] is the color of the builder
  final Color builderColor;
  ///[heartColor] is the color of the heart
  final Color heartColor;

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.assistant(
      color: textColor,
      fontWeight: FontWeight.w400,
      fontSize: 12.5,
    );

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  'Built with ',
                  maxLines: 1,
                  style: textStyle,
                ),
              ),
              Icon(
                Icons.favorite,
                color: heartColor,
                size: 14,
              ),
              Flexible(
                child: Text(
                  ' by ',
                  style: textStyle,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: ThickHorizontalDivider(
                    thickness: 1.5,
                    dividerColor: builderColor,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: openXephasTwitter,
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Brian Cephas',
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.leagueSpartan(
                              fontSize: 15,
                              color: builderColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const HorizontalSpacing(of: 4),
                          Icon(
                            Ionicons.logo_twitter,
                            color: builderColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: ThickHorizontalDivider(
                    thickness: 1.5,
                    dividerColor: builderColor,
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: visitFlutterCommunity,
            child: Text(
              'For The Flutter Community',
              style: textStyle.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
