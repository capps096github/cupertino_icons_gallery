// Project imports:
import '../../gallery_exporter.dart';

class ButtonBody extends StatelessWidget {
  const ButtonBody({
    Key? key,
    required this.buttonColor,
    required this.toolTip,
    required this.text,
    required this.textColor,
    required this.iconData,
    required this.onTap,
    required this.isHovered,
    this.iconWidget,
    required this.isSmallButton,
  }) : super(key: key);

  final bool isHovered, isSmallButton;

  final Color buttonColor;
  final String? toolTip;
  final String text;
  final Color textColor;
  final IconData? iconData;
  final VoidCallback onTap;

  final Widget? iconWidget;

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = Theme.of(context)
        .textTheme
        .button!
        .copyWith(fontWeight: FontWeight.w900);

    VisualDensity density = Theme.of(context).visualDensity;
    final isDesktop = GalleryResponsive.isDesktop(context);
    final width = MediaQuery.of(context).size.width;

    /// True if It has an Icon
    final hasIconData = (iconData != null);
    final hasIconWidget = (iconWidget != null);

    //
    return AnimatedContainer(
      width: isSmallButton ? null : (isDesktop ? width * .6 : width),
      duration: fiftyMilliseconds,
      decoration: BoxDecoration(
        color: isHovered ? buttonColor.withOpacity(.15) : galleryTransparent,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.all(isHovered ? 10 : (isDesktop ? 8 : 4)),
      clipBehavior: Clip.antiAlias,
      child: Tooltip(
        message: toolTip ?? text,
        textStyle: TextStyle(color: buttonColor),
        decoration: BoxDecoration(
          color: textColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: (hasIconData || hasIconWidget)
            ? ElevatedButton.icon(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  primary: buttonColor,
                  onPrimary: textColor,
                  elevation: isHovered ? 8 : 0,
                  shadowColor: textColor.withOpacity(.15),
                  visualDensity: density,
                  textStyle: buttonTextStyle,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    text,
                    maxLines: 1,
                  ),
                ),
                icon: hasIconData
                    ? Icon(iconData, color: textColor)
                    : iconWidget!,
              )
            : ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  primary: buttonColor,
                  onPrimary: textColor,
                  elevation: isHovered ? 8 : 0,
                  visualDensity: density,
                  shadowColor: textColor.withOpacity(.15),
                  textStyle: buttonTextStyle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    text,
                    maxLines: 1,
                  ),
                ),
              ),
      ),
    );
  }
}
