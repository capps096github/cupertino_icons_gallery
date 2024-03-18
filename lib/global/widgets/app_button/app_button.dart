import '../../../gallery_exporter.dart';
import 'button_body.dart';
///AppButton class
class AppButton extends StatelessWidget {
  ///[AppButton] constructor
  const AppButton({
    required this.text, required this.onTap, required this.textColor, required this.buttonColor, super.key,
    this.icon,
    this.iconWidget,
    this.toolTip,
    this.isSmallButton = false,
  });
///[isSmallButton] is wether the button is small or not
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

  /// text label
  final String text;
  /// icon widget
  final Widget? iconWidget;
  /// onTap function
  final VoidCallback? onTap;
  /// text color
  final Color textColor;
  /// button color
  final Color buttonColor;
  /// icon
  final IconData? icon;
  /// tooltip
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
