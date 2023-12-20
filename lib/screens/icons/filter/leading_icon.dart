// Project imports:
import '../../../gallery_exporter.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    super.key,
    this.icon,
    required this.iconColor,
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
