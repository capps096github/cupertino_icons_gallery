import '../../../app_exporter.dart';
import '../filter/filter_provider.dart';
import '../icon_providers.dart';

class GridCard extends ConsumerWidget {
  const GridCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // get the current filter index
    final currentFilterIndex = ref.watch(selectedFilterIndexProvider);

    // get the current filter alphabet
    final currentFilterAlphabet = alphabetFilters[currentFilterIndex];

    // all selected
    final isAllSelected = currentFilterIndex == 0 || currentFilterIndex == -1;

    /// State Provider for all subjects
    final galleryIconList = ref.watch(allIconsProvider);

    // provides the length of the subjects list
    final totalIconCount = galleryIconList.length;

    // check if we have icons
    final hasIcons = totalIconCount > 0;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: spacing8,
        vertical: spacing16,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: appColor,
        borderRadius: borderRadius8,
        gradient: LinearGradient(
          colors: [
            appColor,
            galleryPink,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (hasIcons) ...[
            const Text(
              'Explore All',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: appWhite,
              ),
            ),
            const Spacing(of: spacing4),
          ],
          Text(
            numberFormatter.format(totalIconCount),
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: appWhite,
            ),
          ),
          const Spacing(of: spacing4),
          const Text(
            'Cupertino Icons',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: appWhite,
            ),
          ),
          if (!isAllSelected) ...[
            const Spacing(of: spacing2),
            Text(
              'starting with letter "${currentFilterAlphabet.toLowerCase()}"',
              style: const TextStyle(
                fontSize: 12,
                color: appWhite,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
