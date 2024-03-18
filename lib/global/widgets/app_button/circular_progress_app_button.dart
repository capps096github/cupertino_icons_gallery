import '../../../gallery_exporter.dart';
///CircularProgressAppButton class
class CircularProgressAppButton extends StatelessWidget {
 ///[CircularProgressAppButton] constructor
  const CircularProgressAppButton({
    required this.isTapped, required this.onTap, required this.text, required this.textColor, required this.buttonColor, super.key,
    this.icon,
    this.toolTip,
    this.iconWidget,
  });
  ///[isTapped] is wether the button is tapped or not
  final bool isTapped;
  ///[onTap] is the function to be called when the button is tapped
  final VoidCallback? onTap;
  ///[text] is the text to be displayed on the button
  final String text;
  ///[textColor] is the color of the text
  final Color textColor;
  ///[buttonColor] is the color of the button   
  final Color buttonColor;
  ///[icon] is the icon to be displayed on the button
  final IconData? icon;
  ///[toolTip] is the tooltip to show when the user hovers over the button.
  final String? toolTip;

  /// this will be rendered incase the icon is not provided
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
