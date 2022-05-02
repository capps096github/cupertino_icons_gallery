import '../gallery_exporter.dart';
import 'grid/icon_grid.dart';
import 'icons_rail.dart';

class IconScreen extends ConsumerWidget {
  const IconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // this will have a search and filter section too
    return Row(
      children: const [
        Expanded(child: IconGrid()),
        IconsRail(),
      ],
    );
  }
}
