import '../../gallery_exporter.dart';
import '../navbar/exporter.dart';

// greeting
// this shows Good Morning, Good Afternoon and Good Evening respectively at their times
class TitleBanner extends ConsumerWidget {
  const TitleBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // current index of the navbar
    final navBarIndex = ref.watch(selectedNavBarIndexProvider.state).state;

    //  check if we are on Desktop
    final isDesktop = GalleryResponsive.isDesktop(context);

    final homeTitle = navbarIcons[navBarIndex].label;

    // Access the colorscheme
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedSwitcher(
        duration: quarterSeconds,
        child: Text(
          homeTitle,
          key: ValueKey(navBarIndex),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.spartan(
            fontSize: isDesktop ? 25 : 22.5,
            color: colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
