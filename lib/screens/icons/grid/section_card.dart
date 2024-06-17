import '../../../app_exporter.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    required this.children,
    required this.label,
    this.color = appColor,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    super.key,
  });

  /// child widgets for this card
  final List<Widget> children;

  /// color
  final Color color;

  /// label
  final String label;

  // alignment
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: borderRadius8,
        border: Border.all(
          color: color,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: circularRadius4,
                topRight: circularRadius4,
              ),
            ),
            child: Padding(
              padding: padding8,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: appWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          // contents
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: spacing8,
                vertical: spacing16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: crossAxisAlignment,
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
