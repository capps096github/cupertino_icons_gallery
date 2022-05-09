// Project imports:
import '../../gallery_exporter.dart';

// greeting
// this shows Good Morning, Good Afternoon and Good Evening respectively at their times
class TitleBanner extends ConsumerWidget {
  const TitleBanner({
    Key? key,
    required this.homeTitle,
  }) : super(key: key);
  final String homeTitle;

  @override
  Widget build(BuildContext context, ref) {
    // Access the colorscheme
    final colorScheme = Theme.of(context).colorScheme;

    //  check if we are on Desktop
    final isDesktop = GalleryResponsive.isDesktop(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            homeTitle,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.spartan(
              fontSize: isDesktop ? 25 : 22.5,
              color: colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const ThickHorizontalDivider(
            margin: EdgeInsets.symmetric(vertical: 5),
            dividerColor: galleryWhite,
          ),
        ],
      ),
    );
  }
}
