// Project imports:
import '../../gallery_exporter.dart';

///this is a horizontal divider
class ThickHorizontalDivider extends StatelessWidget {
  const ThickHorizontalDivider({
    super.key,
    this.dividerColor = galleryColor,
    this.thickness = 6.0,
    this.dividerWidth = 70,
    this.margin = const EdgeInsets.symmetric(vertical: 16.0),
  });

//color of the divider
  final Color dividerColor;

  // divider width
  final double dividerWidth;

  /// divider height
  final double thickness;

  // margin
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: thickness,
      width: dividerWidth,
      decoration: BoxDecoration(
        color: dividerColor,
        borderRadius: BorderRadius.circular(thickness / 2),
      ),
    );
  }
}

///this is a vertical divider
class ThickVerticalDivider extends StatelessWidget {
  const ThickVerticalDivider({
    super.key,
    this.dividerColor = galleryColor,
    this.thickness = 6.0,
    this.dividerHeight = 150,
    this.margin = const EdgeInsets.symmetric(vertical: 16.0),
  });

//color of the divider
  final Color dividerColor;

  // divider width
  final double? dividerHeight;

  /// divider height
  final double thickness;

  // margin
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: dividerHeight,
      width: thickness,
      decoration: BoxDecoration(
        color: dividerColor,
        borderRadius: BorderRadius.circular(thickness / 2),
      ),
    );
  }
}
