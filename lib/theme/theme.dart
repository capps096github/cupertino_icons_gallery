// Project imports:
import '../gallery_exporter.dart';

final ThemeData galleryTheme = _buildgalleryTheme();

//* Function to generate the theme
ThemeData _buildgalleryTheme() {
  final ThemeData galleryBaseTheme = ThemeData.light();
  return galleryBaseTheme.copyWith(
    backgroundColor: galleryBackground,
    scaffoldBackgroundColor: galleryBackground,
    primaryColor: galleryColor,
    colorScheme: galleryBaseTheme.colorScheme.copyWith(
      //* -- Primary
      primary: galleryColor,
      onPrimary: galleryWhite,
      //* -- Secondary
      // secondary: galleryYellow,
      // onSecondary: galleryWhite,
      //* -- Background
      background: galleryBackground,
      onBackground: galleryColor,
      //* -- Surface
      surface: galleryColor,
      onSurface: galleryBackground,
      //* -- Error
      error: galleryError,
      onError: galleryWhite,
      //* -- Shadow
      shadow: galleryBlack,
    ),
    //* -- text themes
    textTheme: _buildgalleryTextTheme(base: galleryBaseTheme.textTheme),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: galleryColor.withOpacity(.25),
      cursorColor: galleryColor,
    ),

    //* -- Visual Density
    visualDensity: VisualDensity.adaptivePlatformDensity,
    //* -- Appbar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      titleTextStyle: GoogleFonts.spartan(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: galleryWhite,
      ),
    ),
    //* -- tooltip
    tooltipTheme: TooltipThemeData(
      textStyle: const TextStyle(color: galleryWhite),
      decoration: BoxDecoration(
        color: galleryColor,
        borderRadius: BorderRadius.circular(6),
      ),
    ),
    //* -- text button
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(10),
        ),
      ),
    ),
  );
}

//* gallery Text theme
TextTheme _buildgalleryTextTheme({required TextTheme base}) {
  return base
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w500,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
        headline6: base.headline6!.copyWith(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 12.0,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
        bodyText2: base.bodyText2!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          height: 1.5,
          letterSpacing: .2,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
      )
      .apply(
        fontFamily: GoogleFonts.spartan().fontFamily,
        displayColor: galleryColor,
        bodyColor: galleryColor,
      );
}
