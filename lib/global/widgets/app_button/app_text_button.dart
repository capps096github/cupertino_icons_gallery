import '../../../app_exporter.dart';
///AppTextButton class
class AppTextButton extends ConsumerWidget {
  ///[AppTextButton] constructor
  const AppTextButton({
    required this.onTap, required this.textColor, required this.buttonColor, required this.text, super.key,
    this.toolTip,
    this.icon,
    this.tooltipTextColor,
  });
///[onTap] is the function to be called when the button is tapped
  final VoidCallback onTap;
///[textColor] is the color of the text
  final Color textColor;
///[buttonColor] is the color of the button
  final Color buttonColor;
///[tooltipTextColor] is the color of the tooltip text
  final Color? tooltipTextColor;

/// text: The text to be displayed on the button
  final String text;

/// tooltip: The tooltip to show when the user hovers over the button.
  final String? toolTip;
/// icon: The icon to be displayed on the button
  final IconData? icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// True if It has an Icon
    final hasIcon = (icon != null);
    final density = Theme.of(context).visualDensity;

    final droidconResponsive = ref.watch(responsivenessProvider(context));

    final isDesktop = droidconResponsive.isDesktopScreen;
    //
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: buttonColor,
      foregroundColor: textColor,
      shape: const StadiumBorder(),
      shadowColor: textColor.withOpacity(.2),
      visualDensity: density,
      textStyle: TextStyle(
        fontSize: isDesktop ? 16 : 14,
        fontWeight: FontWeight.w600,
      ),
    );

    return Tooltip(
      message: toolTip ?? text,
      textStyle: TextStyle(color: tooltipTextColor ?? buttonColor),
      decoration: BoxDecoration(
        color: textColor,
        borderRadius: borderRadius4,
      ),
      child: hasIcon
          ? TextButton.icon(
              onPressed: onTap,
              style: buttonStyle,
              label: Text(
                text,
                maxLines: 1,
              ),
              icon: Icon(icon, color: textColor),
            )
          : TextButton(
              onPressed: onTap,
              style: buttonStyle,
              child: Text(
                text,
                maxLines: 1,
              ),
            ),
    );
  }
}
