import '../../../app_exporter.dart';

///GridCredits class
class GridCredits extends StatelessWidget {
  ///[GridCredits] constructor
  const GridCredits({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SectionTitle(
            sectionText: 'App Credits',
            backgroundColor: galleryPink,
          ),

          // from
          const FromXephas(
            textColor: appColor,
            builderColor: galleryPink,
          ),

          const VerticalSpacing(of: 10),
          // in flutter
          Center(
            child: Image.asset(
              'images/with_flutter.png',
              height: 50,
            ),
          ),

          const VerticalSpacing(of: 20),
        ],
      ),
    );
  }
}
