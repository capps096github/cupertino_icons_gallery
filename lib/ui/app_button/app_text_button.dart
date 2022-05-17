// Project imports:
import '../../gallery_exporter.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.onTap,
    required this.textColor,
    required this.buttonColor,
     this.toolTipColor,
    required this.text,
    this.toolTip,
  }) : super(key: key);

  final VoidCallback onTap;
  final Color textColor, buttonColor;
  final Color? toolTipColor;

  // text: The text to be displayed on the button
  final String text;

// tooltip: The tooltip to show when the user hovers over the button.
  final String? toolTip;

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = Theme.of(context).textTheme.bodyText2!.copyWith(
          color: textColor,
        );

    VisualDensity density = Theme.of(context).visualDensity;

    return Tooltip(
      message: toolTip ?? text,
      textStyle: TextStyle(color:toolTipColor?? buttonColor),
      decoration: BoxDecoration(
        color: textColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          primary: textColor,
          backgroundColor: buttonColor,
          visualDensity: density,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: Text(
            text,
            maxLines: 1,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
