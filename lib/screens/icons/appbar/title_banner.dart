// Project imports:
import '../../../gallery_exporter.dart';

// greeting
// this shows Good Morning, Good Afternoon and Good Evening respectively at their times
///Greeting] class
class TitleBanner extends ConsumerWidget {
  ///[TitleBanner] constructor
  const TitleBanner({
    required this.homeTitle, super.key,
  });
  ///[homeTitle] is the title of the home page
  final String homeTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Access the colorscheme
    final colorScheme = Theme.of(context).colorScheme;

    final responsiveness = ref.watch(responsivenessProvider(context));

    final isDesktop = responsiveness.isDesktopScreen;

    return Padding(
      padding: const EdgeInsets.all(8),
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
