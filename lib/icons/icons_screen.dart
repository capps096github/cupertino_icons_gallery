import '../gallery_exporter.dart';
import 'grid/icon_grid.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this will have a search and filter section too
    return const IconGrid();
  }
}
