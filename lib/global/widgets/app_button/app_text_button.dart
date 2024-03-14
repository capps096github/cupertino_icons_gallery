import '../../../gallery_exporter.dart';

class AppTextButton extends ConsumerWidget {
  const AppTextButton({
    required this.onTap, required this.textColor, required this.buttonColor, required this.text, super.key,
    this.toolTip,
    this.icon,
    this.tooltipTextColor,
  });

  final VoidCallback onTap;
  final Color textColor;
  final Color buttonColor;

  final Color? tooltipTextColor;

  // text: The text to be displayed on the button
  final String text;

// tooltip: The tooltip to show when the user hovers over the button.
  final String? toolTip;

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
