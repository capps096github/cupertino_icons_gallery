import '../../../app_exporter.dart';
///ButtonBody class
class ButtonBody extends ConsumerWidget {
  ///[ButtonBody] constructor
  const ButtonBody({
    required this.buttonColor, required this.toolTip, required this.text, required this.textColor, required this.iconData, required this.onTap, required this.isSmallButton, super.key,
    this.iconWidget,
  });
///[isSmallButton] is wether the button is small or not
  final bool isSmallButton;
///[buttonColor] is the color of the button
  final Color buttonColor;
  ///[toolTip] is the tooltip to show when the user hovers over the button.
  final String? toolTip;
  ///[text] is the text to be displayed on the button
  final String text;
  ///[textColor] is the color of the text
  final Color textColor;
  ///[iconData] is the icon to be displayed on the button
  final IconData? iconData;
  ///[onTap] is the function to be called when the button is tapped
  final VoidCallback? onTap;
///[iconWidget] is the widget to be displayed on the button
  final Widget? iconWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final density = Theme.of(context).visualDensity;

    final width = MediaQuery.of(context).size.width;

    // responsiveness
    final responsiveness = ref.watch(responsivenessProvider(context));

    final isDesktop = responsiveness.isDesktopScreen;
    final isMobile = responsiveness.isMobileScreen;

    /// True if It has an Icon
    final hasIconData = (iconData != null);
    final hasIconWidget = (iconWidget != null);
    final hasIcon = hasIconData || hasIconWidget;

    // elevation
    const elevation = spacing0;

    //
    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: buttonColor,
      foregroundColor: textColor,
      elevation: elevation,
      shape: const StadiumBorder(),
      shadowColor: textColor.withOpacity(.2),
      visualDensity: density,
      textStyle: TextStyle(
        fontSize: isDesktop ? 16 : 14,
        fontWeight: FontWeight.w600,
      ),
    );

    //
    return AnimatedContainer(
      width: isSmallButton ? null : (isMobile ? width : maxAuthWidth),
      duration: fiftyMilliseconds,
      // for good looking UI o mobile we set this height to 42
      height: isDesktop ? kDesktopButtonHeight : kButtonHeight,
      child: Tooltip(
        message: toolTip ?? text,
        textStyle: TextStyle(color: buttonColor),
        decoration: BoxDecoration(
          color: textColor,
          borderRadius: borderRadius4,
        ),
        child: hasIcon
            ? ElevatedButton.icon(
                onPressed: onTap,
                style: buttonStyle,
                label: Text(
                  text,
                  maxLines: 1,
                ),
                icon: iconWidget ?? Icon(iconData, color: textColor),
              )
            : ElevatedButton(
                onPressed: onTap,
                style: buttonStyle,
                child: Text(
                  text,
                  maxLines: 1,
                ),
              ),
      ),
    );
  }
}
