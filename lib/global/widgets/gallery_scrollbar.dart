// Project imports:
import '../../app_exporter.dart';

///[GalleryScrollbar] is a custom scrollbar for our app
class GalleryScrollbar extends StatelessWidget {
  ///[GalleryScrollbar] constructor
  const GalleryScrollbar({
    required this.controller,
    required this.child,
    super.key,
    this.height,
    this.color = appColor,
  });

  ///[child] is the child widget OF THE SCROLLBAR
  final BoxScrollView child;

  ///[height] is the height of the scrollbar
  final double? height;

  ///[color] is the color of the scrollbar
  final Color color;

  ///[controller] is the controller of the scrollbar
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context);
    final mQheight =
        (mQ.size.height * .15) - (mQ.padding.top + mQ.padding.bottom);

    final platform = Theme.of(context).platform;

    ///This variable declares that if we are on phone
    final showScrollbar =
        !(TargetPlatform.android == platform || TargetPlatform.iOS == platform);

    return showScrollbar
        ? DraggableScrollbar(
            controller: controller,
            heightScrollThumb: height ?? mQheight,
            backgroundColor: color,
            padding: const EdgeInsets.all(2),
            alwaysVisibleScrollThumb: true,
            child: child,
            scrollThumbBuilder: (
              backgroundColor,
              thumbAnimation,
              labelAnimation,
              height, {
              labelConstraints,
              labelText,
            }) {
              return Container(
                constraints: BoxConstraints.tight(
                  Size(8, height),
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            },
          )
        : child;
  }
}
