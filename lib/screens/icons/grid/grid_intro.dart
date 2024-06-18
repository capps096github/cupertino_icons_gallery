// Project imports:
import '../../../app_exporter.dart';
import 'grid_card.dart';
import 'grid_hint_card.dart';
import 'open_source_card.dart';

///IconGridIntro class
class IconGridIntro extends StatelessWidget {
  ///[IconGridIntro] constructor
  const IconGridIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: padding8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          //
          OpenSourceCard(),

          Spacing(of: spacing8),
          GridCard(),

          Spacing(of: spacing8),
          GridHintCard(),

          Spacing(of: spacing16),
        ],
      ),
    );
  }
}
