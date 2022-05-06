// Project imports:
import '../../gallery_exporter.dart';
import 'filter_provider.dart';
import 'filter_rail_item.dart';

class FilterRail extends ConsumerWidget {
  const FilterRail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // check if we are on Desktop
    // final isDesktop = CalcutResponsive.isDesktop(context);

    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;
    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;

    return Material(
      color: primary,
      elevation: 8,
      child: AnimatedContainer(
        duration: quarterSeconds,
        width: sideBarTabletWidth,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Drawer Icon
            Container(
              decoration: BoxDecoration(
                color: galleryBlue,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(2.0),
              padding: const EdgeInsets.all(16.0),
              child: const Icon(
                Icons.tune,
                color: galleryWhite,
                semanticLabel: 'filter',
              ),
            ),

            // divider
            Center(
              child: ThickHorizontalDivider(
                dividerColor: onPrimary,
                thickness: 4,
                dividerWidth: 60,
              ),
            ),

            //top rail items
            Expanded(
              child: ListView.builder(
                itemCount: alphabetFilters.length,
                itemBuilder: (context, index) {
                  // get the item
                  final railItem = alphabetFilters[index];

                  return FilterRailItem(
                    filterAlphabet: railItem,
                    filterIndex: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
