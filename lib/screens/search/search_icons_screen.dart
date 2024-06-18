// Project imports:
import '../../app_exporter.dart';
import '../icons/icons_rail.dart';
import 'search_suggestion_list.dart';

///SearchIconsScreen class creation
class SearchIconsScreen extends StatelessWidget {
  ///[SearchIconsScreen] constructor
  const SearchIconsScreen({required this.searchQuery, super.key});

  ///searchQuery
  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchSuggestionList(query: searchQuery)),
        const Padding(
          padding: padding8,
          child: IconsRail(),
        ),
      ],
    );
  }
}
