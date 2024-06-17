// Project imports:
import '../../../app_exporter.dart';

// greeting
// this shows Good Morning, Good Afternoon and Good Evening respectively at their times
///Greeting] class
class TitleBanner extends ConsumerWidget {
  ///[TitleBanner] constructor
  const TitleBanner({
    super.key,
    this.title = 'Cupertino Icons',
  });

  // title
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Access the colorscheme
    final colorScheme = Theme.of(context).colorScheme;

    final responsiveness = ref.watch(responsivenessProvider(context));

    final isDesktop = responsiveness.isDesktopScreen;

    return Padding(
      padding: padding8,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppLogo(logoColor: appWhite),
          const Spacing(of: spacing2),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
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
