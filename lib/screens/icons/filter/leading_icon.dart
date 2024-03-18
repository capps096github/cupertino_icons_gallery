// Project imports:
import '../../../gallery_exporter.dart';
///LeadingIcon class
class LeadingIcon extends StatelessWidget {
  ///[LeadingIcon] constructor
  const LeadingIcon({
    required this.iconColor, super.key,
    this.icon,
  });
///[icon] is the icon
  final IconData? icon;
///[iconColor] is the color of the icon
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor,
    );
  }
}
