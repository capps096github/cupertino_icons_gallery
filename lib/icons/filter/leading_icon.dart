// Project imports:
import '../../gallery_exporter.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    Key? key,
    this.icon,
    required this.iconColor,
  }) : super(key: key);

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
