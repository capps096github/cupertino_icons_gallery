import '../gallery_exporter.dart';

class GalleryScrollbar extends StatelessWidget {
  const GalleryScrollbar({
    Key? key,
    required this.controller,
    required this.child,
    this.height,
    this.color = galleryColor,
  }) : super(key: key);

  final BoxScrollView child;
  final double? height;
  final Color color;
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context);
    final _mQheight =
        (mQ.size.height * .15) - (mQ.padding.top + mQ.padding.bottom);

    TargetPlatform platform = Theme.of(context).platform;

    ///This variable declares that if we are on phone
    final showScrollbar = (!(TargetPlatform.android == platform ||
        TargetPlatform.iOS == platform));

    return showScrollbar
        ? DraggableScrollbar(
            controller: controller,
            heightScrollThumb: height ?? _mQheight,
            backgroundColor: color,
            padding: const EdgeInsets.all(2),
            alwaysVisibleScrollThumb: true,
            child: child,
            scrollThumbBuilder:
                (backgroundColor, thumbAnimation, labelAnimation, height,
                    {labelConstraints, labelText}) {
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
