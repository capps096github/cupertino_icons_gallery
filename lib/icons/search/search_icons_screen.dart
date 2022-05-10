import '../../gallery_exporter.dart';
import '../icons_rail.dart';
import 'search_suggestion_list.dart';

class SearchIconsScreen extends StatelessWidget {
  const SearchIconsScreen({Key? key, required this.searchQuery})
      : super(key: key);

  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchSuggestionList(query: searchQuery)),
        const IconsRail(),
      ],
    );
  }
}
