import '../../../app_exporter.dart';
import 'section_card.dart';

///GridCredits class
class GridCredits extends StatelessWidget {
  ///[GridCredits] constructor
  const GridCredits({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding8,
        child: SectionCard(
          label: 'Credits',
          color: galleryPink,
          children: [
            // from
            const FromXephas(
              textColor: appColor,
              builderColor: galleryPink,
            ),

            const Spacing(of: spacing16),

            // in flutter
            Center(
              child: Image.asset(
                'images/with_flutter.png',
                height: 50,
              ),
            ),

            const Spacing(of: 20),
          ],
        ),
      ),
    );
  }
}
