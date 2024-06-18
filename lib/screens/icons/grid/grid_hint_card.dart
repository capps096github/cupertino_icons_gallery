import 'package:flutter/cupertino.dart';

import '../../../app_exporter.dart';
import '../icon_providers.dart';
import 'section_card.dart';

class GridHintCard extends ConsumerWidget {
  const GridHintCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// State Provider for all subjects
    final galleryIconList = ref.watch(allIconsProvider);

    // provides the length of the subjects list
    final totalIconCount = galleryIconList.length;

    // check if we have icons
    final hasIcons = totalIconCount > 0;

    return hasIcons
        ? const SectionCard(
            label: 'Hints',
            color: galleryPink,
            children: [
              GridHint(
                icon: CupertinoIcons.hand_draw,
                text:
                    'Tap on an Icon to View its Source Code for use in your Flutter Project.',
              ),
              GridHint(
                icon: Icons.tune,
                text:
                    'Use the rail on the left to filter the icons by their Alphabetical Letters.',
              ),
              GridHint(
                icon: CupertinoIcons.search,
                text: 'Search for an Icon by typing in the search bar above.',
              ),
            ],
          )
        : const EmptySpace();
  }
}

///GridHint class
class GridHint extends StatelessWidget {
  ///[GridHint] constructor
  const GridHint({
    required this.icon,
    required this.text,
    super.key,
  });

  /// icon
  final IconData icon;

  /// text
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: verticalPadding4,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: padding2,
            child: Icon(
              icon,
              color: galleryPink,
            ),
          ),
          const Spacing(of: spacing8),
          Expanded(
            child: Text(
              text,
              softWrap: true,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: galleryPink,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
