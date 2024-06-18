import 'package:flutter/cupertino.dart';

import '../../app_exporter.dart';

///FromXephas class
class FromXephas extends StatelessWidget {
  ///[FromXephas] constructor
  const FromXephas({
    super.key,
    this.textColor = appWhite,
    this.builderColor = appWhite,
    this.heartColor = galleryError,
  });

  ///[textColor] is the color of the text
  final Color textColor;

  ///[builderColor] is the color of the builder
  final Color builderColor;

  ///[heartColor] is the color of the heart
  final Color heartColor;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: textColor,
      fontWeight: FontWeight.bold,
      fontSize: 12.5,
    );

    return Padding(
      padding: padding8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: linkTextSpan(
                  text: 'Open Sourced',
                  link: repoLink,
                  linkColor: linkColor,
                ),
              ),
              Flexible(
                child: Text(
                  ' & Built with ',
                  maxLines: 1,
                  style: textStyle,
                ),
              ),
              Icon(
                Icons.favorite,
                color: heartColor,
                size: 14,
              ),
              Flexible(
                child: Text(
                  ' by ',
                  style: textStyle,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: horizontalPadding8,
                  child: ThickHorizontalDivider(
                    thickness: 1.5,
                    dividerColor: builderColor,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: openXephasPortfolio,
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Brian Cephas Mugisa',
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: builderColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacing(of: spacing4),
                          Icon(
                            CupertinoIcons.arrow_up_right_square_fill,
                            color: builderColor,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: horizontalPadding8,
                  child: ThickHorizontalDivider(
                    thickness: 1.5,
                    dividerColor: builderColor,
                  ),
                ),
              ),
            ],
          ),
          const Spacing(of: spacing4),
          InkWell(
            onTap: visitFlutterCommunity,
            child: Text(
              'For The Flutter Community',
              style: textStyle.copyWith(
                decoration: TextDecoration.underline,
                color: linkColor,
                decorationColor: linkColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
