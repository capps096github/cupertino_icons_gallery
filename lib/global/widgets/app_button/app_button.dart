import '../../../gallery_exporter.dart';
import 'button_body.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text, required this.onTap, required this.textColor, required this.buttonColor, super.key,
    this.icon,
    this.iconWidget,
    this.toolTip,
    this.isSmallButton = false,
  });

  static Widget small({
    required String label,
    required VoidCallback onTap,
    required Color textColor,
    required Color buttonColor,
    IconData? icon,
    Widget? iconWidget,
    String? toolTip,
  }) =>
      AppButton(
        text: label,
        onTap: onTap,
        textColor: textColor,
        buttonColor: buttonColor,
        icon: icon,
        iconWidget: iconWidget,
        toolTip: toolTip,
        isSmallButton: true,
      );

  ///Wether the button is small or not
  final bool isSmallButton;

  // text label
  final String text;
  final Widget? iconWidget;
  final VoidCallback? onTap;
  final Color textColor;
  final Color buttonColor;
  final IconData? icon;
  final String? toolTip;

  @override
  Widget build(BuildContext context) {
    return ButtonBody(
      buttonColor: buttonColor,
      toolTip: toolTip,
      text: text,
      textColor: textColor,
      iconData: icon,
      iconWidget: iconWidget,
      onTap: onTap,
      isSmallButton: isSmallButton,
    );
  }
}
