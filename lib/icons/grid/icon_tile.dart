import '../../gallery_exporter.dart';
// on tap, open up the right page on Desktop and open new page on mobile

class IconTile extends StatefulWidget {
  const IconTile({
    Key? key,
    required this.onTap,
    required this.text,
    required this.squareColor,
    required this.textColor,
    required this.icon,
    required this.showText,
  }) : super(key: key);
  final VoidCallback onTap;

  // circle - text color
  final Color squareColor, textColor;

  //text
  final String text;

  ///Icon of a given subject
  final IconData icon;

  // showText
  final bool showText;

  @override
  State<IconTile> createState() => _IconTileState();
}

class _IconTileState extends State<IconTile> {
  double elevation = 0;

  ///squareSize
  double squareSize = 120.0;

  ///textSize
  double textSize = 10.0;

  ///iconSize
  double iconSize = 40.0;

  /// border radius
  final borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.textColor.withOpacity(.2),
      borderRadius: borderRadius,
      elevation: elevation,
      shadowColor: widget.textColor,
      child: InkWell(
        splashColor: widget.textColor,
        highlightColor: galleryBackground.withOpacity(.5),
        borderRadius: borderRadius,
        onTap: widget.onTap,
        onHover: (isHover) {
          setState(() {
            isHover ? elevation = 10 : elevation = 0;
          });
        },
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: widget.squareColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              height: squareSize,
              width: squareSize,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    color: widget.textColor,
                    size: iconSize,
                  ),
                  if (widget.showText) const VerticalSpacing(of: 5),
                  if (widget.showText)
                    Text(
                      widget.text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: widget.textColor,
                        fontSize: textSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
