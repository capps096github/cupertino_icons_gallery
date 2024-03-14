import '../../../gallery_exporter.dart';

class GridCredits extends StatelessWidget {
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
            textColor: galleryColor,
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
