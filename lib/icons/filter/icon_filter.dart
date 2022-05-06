import '../../gallery_exporter.dart';
import 'filter_provider.dart';
import 'icon_filter_chip.dart';

class IconFilter extends StatelessWidget {
  const IconFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: alphabetFilters.length,
          itemBuilder: (context, index) {
            return IconFilterChip(
              index: index,
              filterText: alphabetFilters[index],
            );
          },
        ),
      ),
    );
  }
}
