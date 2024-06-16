import '../../app_exporter.dart';

/// Small Size of the wcmcs Logo
class AppLogo extends StatelessWidget {
  /// [AppLogo]  constructor
  const AppLogo({
    super.key,
    this.logoColor = appColor,
    this.logoSize = 40.0,
  });

  /// icon color
  final Color logoColor;

  /// icon size
  final double logoSize;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      appLogo,
      height: logoSize,
      width: logoSize,
      colorFilter: ColorFilter.mode(logoColor, BlendMode.srcIn),
    );
  }
}
