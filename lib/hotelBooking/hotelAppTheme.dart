import 'package:best_flutter_ui_templates/main.dart';
import 'package:flutter/material.dart';

class HotelAppTheme {

  static TextTheme _buildTextTheme(TextTheme base) {
    var fontName = "WorkSans";
    return base.copyWith(
      subtitle1: base.headline6?.copyWith(fontFamily: fontName),
      bodyText1: base.headline6?.copyWith(fontFamily: fontName),
      bodyText2: base.headline6?.copyWith(fontFamily: fontName),
      button: base.headline6?.copyWith(fontFamily: fontName),
      caption: base.headline6?.copyWith(fontFamily: fontName),
      headline4: base.headline6?.copyWith(fontFamily: fontName),
      headline3: base.headline6?.copyWith(fontFamily: fontName),
      headline2: base.headline6?.copyWith(fontFamily: fontName),
      headline1: base.headline6?.copyWith(fontFamily: fontName),
      headline5: base.headline6?.copyWith(fontFamily: fontName),
      overline: base.headline6?.copyWith(fontFamily: fontName),
      subtitle2: base.headline6?.copyWith(fontFamily: fontName),
    );
  }

  static ThemeData buildLightTheme() {
    Color primaryColor = HexColor("#54D3C2");
    Color secondaryColor = HexColor("#54D3C2");
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      hintColor: secondaryColor,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: const Color(0xFFF6F6F6),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      platform: TargetPlatform.iOS, colorScheme: colorScheme.copyWith(background: const Color(0xFFFFFFFF)).copyWith(error: const Color(0xFFB00020)),
    );
  }
}
