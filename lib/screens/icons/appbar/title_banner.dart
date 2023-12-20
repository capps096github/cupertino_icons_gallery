// Project imports:
import '../../../gallery_exporter.dart';

// greeting
// this shows Good Morning, Good Afternoon and Good Evening respectively at their times
class TitleBanner extends ConsumerWidget {
  const TitleBanner({
    super.key,
    required this.homeTitle,
  });
  final String homeTitle;

  @override
  Widget build(BuildContext context, ref) {
    // Access the colorscheme
    final colorScheme = Theme.of(context).colorScheme;

    final responsiveness = ref.watch(responsivenessProvider(context));

    final isDesktop = responsiveness.isDesktopScreen;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            homeTitle,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.leagueSpartan(
              fontSize: isDesktop ? 25 : 22.5,
              color: colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
