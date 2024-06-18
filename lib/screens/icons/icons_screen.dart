// Project imports:
import '../../app_exporter.dart';
import 'appbar/icons_appbar.dart';
import 'filter/filter_rail.dart';
import 'grid/icon_grid.dart';
import 'icons_rail.dart';

///CupertinoIconsScreen class creation
class CupertinoIconsScreen extends ConsumerWidget {
  ///[CupertinoIconsScreen] constructor
  const CupertinoIconsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // check if we are on mobile
    // check if we are on mobile
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isMobile = responsiveness.isMobileScreen;

    // this will have a search and filter section too
    return Scaffold(
      appBar: iconsAppBar(),
      extendBody: true,
      body: Padding(
        padding: isMobile ? padding4 : padding8,
        child: Row(
          children: [
            // filter rail
            const FilterRail(),

            if (!isMobile) const Spacing(of: spacing8),

            const Expanded(child: IconGrid()),

            // add this space if we aint on mobile
            if (!isMobile) const Spacing(of: spacing8),

            // icons rail
            const IconsRail(),
          ],
        ),
      ),
    );
  }
}

// tap on an icon to view its details banner or even intro
