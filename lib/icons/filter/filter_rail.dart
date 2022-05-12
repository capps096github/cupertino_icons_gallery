// Project imports:
import '../../gallery_exporter.dart';
import '../icon_providers.dart';
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

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider.state).state;

    // check if we are on mobile
    final isMobile = GalleryResponsive.isMobile(context);

    // show Detail here only if we are onMobile
    final showDetails = (selectedIconIndex != -1) && isMobile;

    return AnimatedContainer(
      duration: quarterSeconds,
      color: primary,
      width: showDetails ? 0 : sideBarTabletWidth,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Drawer Icon
          const CurrentFilter(),

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
              key: const PageStorageKey(PageStorageKeys.cupertinoFilterKey),
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
    );
  }
}

class CurrentFilter extends ConsumerWidget {
  const CurrentFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // get the current filter index
    final currentFilterIndex =
        ref.watch(selectedFilterIndexProvider.state).state;

    // get the current filter alphabet
    final currentFilterAlphabet = alphabetFilters[currentFilterIndex];

    // all selected
    final isAllSelected = (currentFilterIndex == 0 || currentFilterIndex == -1);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: galleryPink,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(16.0),
      child: isAllSelected
          ? const Icon(
              Icons.tune,
              color: galleryWhite,
              semanticLabel: 'filter',
            )
          : Text(
              currentFilterAlphabet,
              textAlign: TextAlign.center,
              style: GoogleFonts.spartan(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: galleryWhite,
              ),
            ),
    );
  }
}
