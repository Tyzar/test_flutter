import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

enum M3ThemeContrast { low, medium, high }

class M3Theme {
  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff895032),
      surfaceTint: Color(0xff895032),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffb38e),
      onPrimaryContainer: Color(0xff7a4326),
      secondary: Color(0xff7a572f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffcf9d),
      onSecondaryContainer: Color(0xff7a572f),
      tertiary: Color(0xff8a5015),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffb26f),
      onTertiaryContainer: Color(0xff794206),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff201a18),
      onSurfaceVariant: Color(0xff52443d),
      outline: Color(0xff85736c),
      outlineVariant: Color(0xffd7c2b9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362f2c),
      inversePrimary: Color(0xffffb692),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff341100),
      primaryFixedDim: Color(0xffffb692),
      onPrimaryFixedVariant: Color(0xff6d391d),
      secondaryFixed: Color(0xffffddbb),
      onSecondaryFixed: Color(0xff2b1700),
      secondaryFixedDim: Color(0xffecbe8d),
      onSecondaryFixedVariant: Color(0xff60401a),
      tertiaryFixed: Color(0xffffdcc2),
      onTertiaryFixed: Color(0xff2e1500),
      tertiaryFixedDim: Color(0xffffb77a),
      onTertiaryFixedVariant: Color(0xff6d3a00),
      surfaceDim: Color(0xffe4d7d3),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffef1ec),
      surfaceContainer: Color(0xfff8ebe6),
      surfaceContainerHigh: Color(0xfff2e6e1),
      surfaceContainerHighest: Color(0xffede0db),
    );
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff58290e),
      surfaceTint: Color(0xff895032),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9b5e3f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4d300b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8b663c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff552c00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9c5f23),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff15100d),
      onSurfaceVariant: Color(0xff41332d),
      outline: Color(0xff5f4f48),
      outlineVariant: Color(0xff7b6962),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362f2c),
      inversePrimary: Color(0xffffb692),
      primaryFixed: Color(0xff9b5e3f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff7e4629),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8b663c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff704e27),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9c5f23),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7f470b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd0c4bf),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffef1ec),
      surfaceContainer: Color(0xfff2e6e1),
      surfaceContainerHigh: Color(0xffe7dad6),
      surfaceContainerHighest: Color(0xffdbcfca),
    );
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4c1f05),
      surfaceTint: Color(0xff895032),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff703b1f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff412603),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff63421c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff462300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff703c00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff362923),
      outlineVariant: Color(0xff55463f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362f2c),
      inversePrimary: Color(0xffffb692),
      primaryFixed: Color(0xff703b1f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff54250b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff63421c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff492c07),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff703c00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff502900),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2b6b2),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbeee9),
      surfaceContainer: Color(0xffede0db),
      surfaceContainerHigh: Color(0xffded2cd),
      surfaceContainerHighest: Color(0xffd0c4bf),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd9c7),
      surfaceTint: Color(0xffffb692),
      onPrimary: Color(0xff512308),
      primaryContainer: Color(0xffffb38e),
      onPrimaryContainer: Color(0xff7a4326),
      secondary: Color(0xfffff2e8),
      onSecondary: Color(0xff462a06),
      secondaryContainer: Color(0xffffcf9d),
      onSecondaryContainer: Color(0xff7a572f),
      tertiary: Color(0xffffd7b8),
      onTertiary: Color(0xff4c2700),
      tertiaryContainer: Color(0xffffb26f),
      onTertiaryContainer: Color(0xff794206),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff181210),
      onSurface: Color(0xffede0db),
      onSurfaceVariant: Color(0xffd7c2b9),
      outline: Color(0xffa08d85),
      outlineVariant: Color(0xff52443d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffede0db),
      inversePrimary: Color(0xff895032),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff341100),
      primaryFixedDim: Color(0xffffb692),
      onPrimaryFixedVariant: Color(0xff6d391d),
      secondaryFixed: Color(0xffffddbb),
      onSecondaryFixed: Color(0xff2b1700),
      secondaryFixedDim: Color(0xffecbe8d),
      onSecondaryFixedVariant: Color(0xff60401a),
      tertiaryFixed: Color(0xffffdcc2),
      onTertiaryFixed: Color(0xff2e1500),
      tertiaryFixedDim: Color(0xffffb77a),
      onTertiaryFixedVariant: Color(0xff6d3a00),
      surfaceDim: Color(0xff181210),
      surfaceBright: Color(0xff3f3835),
      surfaceContainerLowest: Color(0xff120d0b),
      surfaceContainerLow: Color(0xff201a18),
      surfaceContainer: Color(0xff251e1c),
      surfaceContainerHigh: Color(0xff2f2926),
      surfaceContainerHighest: Color(0xff3a3330),
    );
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd9c7),
      surfaceTint: Color(0xffffb692),
      onPrimary: Color(0xff471c03),
      primaryContainer: Color(0xffffb38e),
      onPrimaryContainer: Color(0xff57270d),
      secondary: Color(0xfffff2e8),
      onSecondary: Color(0xff462a06),
      secondaryContainer: Color(0xffffcf9d),
      onSecondaryContainer: Color(0xff5a3b15),
      tertiary: Color(0xffffd7b8),
      onTertiary: Color(0xff3f1f00),
      tertiaryContainer: Color(0xffffb26f),
      onTertiaryContainer: Color(0xff512900),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff181210),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeed8cf),
      outline: Color(0xffc2aea5),
      outlineVariant: Color(0xff9f8c84),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffede0db),
      inversePrimary: Color(0xff6e3a1e),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff240900),
      primaryFixedDim: Color(0xffffb692),
      onPrimaryFixedVariant: Color(0xff58290e),
      secondaryFixed: Color(0xffffddbb),
      onSecondaryFixed: Color(0xff1d0e00),
      secondaryFixedDim: Color(0xffecbe8d),
      onSecondaryFixedVariant: Color(0xff4d300b),
      tertiaryFixed: Color(0xffffdcc2),
      onTertiaryFixed: Color(0xff1f0c00),
      tertiaryFixedDim: Color(0xffffb77a),
      onTertiaryFixedVariant: Color(0xff552c00),
      surfaceDim: Color(0xff181210),
      surfaceBright: Color(0xff4b4340),
      surfaceContainerLowest: Color(0xff0b0605),
      surfaceContainerLow: Color(0xff221c1a),
      surfaceContainer: Color(0xff2d2624),
      surfaceContainerHigh: Color(0xff38312e),
      surfaceContainerHighest: Color(0xff443c39),
    );
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece5),
      surfaceTint: Color(0xffffb692),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb38e),
      onPrimaryContainer: Color(0xff1f0700),
      secondary: Color(0xfffff2e8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffcf9d),
      onSecondaryContainer: Color(0xff341d00),
      tertiary: Color(0xffffede0),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb26f),
      onTertiaryContainer: Color(0xff170800),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff181210),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece5),
      outlineVariant: Color(0xffd3beb5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffede0db),
      inversePrimary: Color(0xff6e3a1e),
      primaryFixed: Color(0xffffdbcb),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb692),
      onPrimaryFixedVariant: Color(0xff240900),
      secondaryFixed: Color(0xffffddbb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffecbe8d),
      onSecondaryFixedVariant: Color(0xff1d0e00),
      tertiaryFixed: Color(0xffffdcc2),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb77a),
      onTertiaryFixedVariant: Color(0xff1f0c00),
      surfaceDim: Color(0xff181210),
      surfaceBright: Color(0xff574e4b),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff251e1c),
      surfaceContainer: Color(0xff362f2c),
      surfaceContainerHigh: Color(0xff413a37),
      surfaceContainerHighest: Color(0xff4d4542),
    );
  }

  static ThemeData create({
    required Brightness brightness,
    M3ThemeContrast contrast = M3ThemeContrast.low,
    required TextTheme textTheme,
  }) {
    ColorScheme colorScheme;
    if (brightness == Brightness.light) {
      if (contrast == M3ThemeContrast.high) {
        colorScheme = lightHighContrastScheme();
      } else if (contrast == M3ThemeContrast.medium) {
        colorScheme = lightMediumContrastScheme();
      } else {
        colorScheme = lightScheme();
      }
    } else {
      if (contrast == M3ThemeContrast.high) {
        colorScheme = darkHighContrastScheme();
      } else if (contrast == M3ThemeContrast.medium) {
        colorScheme = darkMediumContrastScheme();
      } else {
        colorScheme = darkScheme();
      }
    }

    return ThemeData(
        useMaterial3: true,
        brightness: brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        appBarTheme: appBarTheme(colorScheme),
        navigationBarTheme: navBarTheme(colorScheme, textTheme),
        inputDecorationTheme: inputDecorationTheme(colorScheme, textTheme));
  }

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;

  GoogleFonts.config.allowRuntimeFetching = false;
  TextTheme bodyTextTheme =
      GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString, baseTextTheme);

  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}

//component themes
AppBarTheme appBarTheme(ColorScheme colors) {
  return AppBarTheme(
    elevation: 0,
    backgroundColor: colors.surface,
    foregroundColor: colors.onSurface,
  );
}

NavigationBarThemeData navBarTheme(ColorScheme colors, TextTheme textTheme) {
  return NavigationBarThemeData(
    backgroundColor: colors.surfaceContainerLow,
    elevation: 0,
    labelTextStyle: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? textTheme.bodyMedium!.copyWith(
              color: colors.primary,
              fontWeight: FontWeight.w600,
            )
          : textTheme.bodyMedium!.copyWith(
              color: colors.onSurface,
            ),
    ),
    indicatorColor: colors.primary,
    iconTheme: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: colors.onPrimary)
          : IconThemeData(color: colors.onSurface),
    ),
  );
}

InputDecorationTheme inputDecorationTheme(
    ColorScheme colorScheme, TextTheme textTheme) {
  final enabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none);

  return InputDecorationTheme(
      hintStyle: textTheme.bodyMedium!
          .copyWith(color: colorScheme.onSurface.withOpacity(0.5)),
      labelStyle: textTheme.bodyMedium!.copyWith(
        color: colorScheme.onSurface,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      prefixIconColor: colorScheme.onSurface.withOpacity(0.5),
      suffixIconColor: colorScheme.onSurface.withOpacity(0.5),
      filled: true,
      fillColor: colorScheme.surfaceContainerLow,
      errorBorder: enabledBorder.copyWith(
        borderSide: BorderSide(color: colorScheme.errorContainer),
      ),
      focusedErrorBorder: enabledBorder.copyWith(
        borderSide: BorderSide(color: colorScheme.errorContainer, width: 1.5),
      ),
      focusedBorder: enabledBorder.copyWith(
          borderSide: BorderSide(color: colorScheme.primary, width: 1)),
      border: enabledBorder);
}
