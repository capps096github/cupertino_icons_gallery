import '../../gallery_exporter.dart';
// on tap, open up the right page on Desktop and open new page on mobile

class IconSquare extends StatefulWidget {
  const IconSquare({
    Key? key,
    required this.onTap,
    required this.text,
    required this.squareColor,
    required this.textColor,
    required this.icon,
  }) : super(key: key);
  final VoidCallback onTap;

  // circle - text color
  final Color squareColor, textColor;

  //text
  final String text;

  ///Icon of a given subject
  final IconData icon;

  @override
  State<IconSquare> createState() => _IconSquareState();
}

class _IconSquareState extends State<IconSquare> {
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
    return Center(
      child: Material(
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
                child: Center(
                  child: ExpandedScrollingColumn(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        widget.icon,
                        color: widget.textColor,
                        size: iconSize,
                      ),
                      const VerticalSpacing(of: 5),
                      Text(
                        widget.text,
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
        ),
      ),
    );
  }
}
