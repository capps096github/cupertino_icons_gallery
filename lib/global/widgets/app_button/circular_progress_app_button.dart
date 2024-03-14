import '../../../gallery_exporter.dart';

class CircularProgressAppButton extends StatelessWidget {
  const CircularProgressAppButton({
    required this.isTapped, required this.onTap, required this.text, required this.textColor, required this.buttonColor, super.key,
    this.icon,
    this.toolTip,
    this.iconWidget,
  });
  final bool isTapped;
  final VoidCallback? onTap;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final IconData? icon;
  final String? toolTip;

  // this will be rendered incase the icon is not provided
  final Widget? iconWidget;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: quarterSeconds,
      child: isTapped
          ? Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: buttonColor,
              ),
              child: CircularProgressIndicator(color: textColor),
            )
          : AppButton(
              text: text,
              onTap: onTap,
              toolTip: toolTip,
              icon: icon,
              textColor: textColor,
              buttonColor: buttonColor,
              iconWidget: iconWidget,
            ),
    );
  }
}
