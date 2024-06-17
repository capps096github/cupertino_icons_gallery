// Project imports:
import '../../app_exporter.dart';

///* this provides the default theme for the app
final appThemeProvider = Provider<ThemeData>((ref) {
  return AppTheme.light;
});

///AppTheme class
class AppTheme {
  ///[light] is the light theme for the app
  static ThemeData get light {
    // text theme
    final textTheme = ThemeData.light().textTheme;

    // TODOput app font here, default is Lato
    const textStyleFunction = GoogleFonts.urbanist;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: appColor,

      //* -- Visual Density
      visualDensity: VisualDensity.adaptivePlatformDensity,

      //* -- Appbar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: appColor,
        // TODOput app font here, default is Lato
        titleTextStyle: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: appWhite,
        ),
      ),

      //* -- tooltip
      tooltipTheme: const TooltipThemeData(
        textStyle: TextStyle(color: appWhite),
        decoration: BoxDecoration(
          color: galleryPink,
          borderRadius: borderRadius4,
        ),
      ),

      //* -- text button
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(padding16),
        ),
      ),

      //* Text Theme
      textTheme: TextTheme(
        displayLarge: textStyleFunction(textStyle: textTheme.displayLarge),
        displayMedium: textStyleFunction(textStyle: textTheme.displayMedium),
        displaySmall: textStyleFunction(textStyle: textTheme.displaySmall),
        headlineLarge: textStyleFunction(textStyle: textTheme.headlineLarge),
        headlineMedium: textStyleFunction(textStyle: textTheme.headlineMedium),
        headlineSmall: textStyleFunction(textStyle: textTheme.headlineSmall),
        titleLarge: textStyleFunction(textStyle: textTheme.titleLarge),
        titleMedium: textStyleFunction(textStyle: textTheme.titleMedium),
        titleSmall: textStyleFunction(textStyle: textTheme.titleSmall),
        bodyLarge: textStyleFunction(textStyle: textTheme.bodyLarge),
        bodyMedium: textStyleFunction(textStyle: textTheme.bodyMedium),
        bodySmall: textStyleFunction(textStyle: textTheme.bodySmall),
        labelLarge: textStyleFunction(textStyle: textTheme.labelLarge),
        labelMedium: textStyleFunction(textStyle: textTheme.labelMedium),
        labelSmall: textStyleFunction(textStyle: textTheme.labelSmall),
      ),
    );
  }
}
