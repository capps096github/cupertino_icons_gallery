// Project imports:
import '../../../gallery_exporter.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    required this.iconColor, super.key,
    this.icon,
  });

  final IconData? icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor,
    );
  }
}
