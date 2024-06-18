// Project imports:
import '../../../app_exporter.dart';
import '../icon_providers.dart';
import 'filter_provider.dart';
import 'filter_rail_item.dart';

///[FilterRail] is the rail for the filter
class FilterRail extends ConsumerWidget {
  ///[FilterRail] constructor
  const FilterRail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // check if we are on Desktop
    // final isDesktop = CalcutResponsive.isDesktop(context);

    //App Theme colorScheme
    const primary = appColor;
    const onPrimary = appWhite;

    // access the value stored at the current page gradeValue provider
    final selectedIconIndex = ref.watch(selectedIconIndexProvider);

    // check if we are on mobile
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isMobile = responsiveness.isMobileScreen;

    // show Detail here only if we are onMobile
    final showDetails = (selectedIconIndex != -1) && isMobile;

    return AnimatedContainer(
      duration: quarterSeconds,
      width: showDetails ? 0 : sideBarTabletWidth,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: primary,
        borderRadius: borderRadius8,
      ),
      padding: padding8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Drawer Icon
          const CurrentFilter(),

          // divider
          const Center(
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
    );
  }
}

///[CurrentFilter] class
class CurrentFilter extends ConsumerWidget {
  ///[CurrentFilter] constructor
  const CurrentFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // get the current filter index
    final currentFilterIndex = ref.watch(selectedFilterIndexProvider);

    // get the current filter alphabet
    final currentFilterAlphabet = alphabetFilters[currentFilterIndex];

    // all selected
    final isAllSelected = currentFilterIndex == 0 || currentFilterIndex == -1;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: galleryPink,
        borderRadius: borderRadius8,
      ),
      margin: margin2,
      padding: padding16,
      child: isAllSelected
          ? const Icon(
              Icons.tune,
              color: appWhite,
              semanticLabel: 'filter',
            )
          : Text(
              currentFilterAlphabet,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: appWhite,
              ),
            ),
    );
  }
}
