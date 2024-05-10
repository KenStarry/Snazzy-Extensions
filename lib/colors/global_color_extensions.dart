part of snazzy_extensions;

extension GlobalColorExtensions on Color {
  /// Generate Material color
  MaterialColor szGenerateMaterialColors(Color color) =>
      MaterialColor(color.value, {
        50: szTintColor(color, 0.9),
        100: szTintColor(color, 0.8),
        200: szTintColor(color, 0.6),
        300: szTintColor(color, 0.4),
        400: szTintColor(color, 0.2),
        500: color,
        600: szShadeColor(color, 0.1),
        700: szShadeColor(color, 0.2),
        800: szShadeColor(color, 0.3),
        900: szShadeColor(color, 0.4)
      });

  /// Tint Generator
  int szTintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  Color szTintColor(Color color, double factor) => Color.fromRGBO(
      szTintValue(color.red, factor),
      szTintValue(color.green, factor),
      szTintValue(color.blue, factor),
      1);

  /// Shade Generator
  int szShadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color szShadeColor(Color color, double factor) => Color.fromRGBO(
      szShadeValue(color.red, factor),
      szShadeValue(color.green, factor),
      szShadeValue(color.blue, factor),
      1);

  /// Generate Random color
  Color get generateRandomColor {
    final rand = Random();

    Color randomColor = Color.fromRGBO(
        rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);

    return randomColor;
  }

  /// Darken color by percent (100 -> black)
  Color szDarkenColor([int percent = 10]) {
    assert(1 <= percent && percent <= 100);

    var f = 1 - percent / 100;
    return Color.fromARGB(
        alpha, (red * f).round(), (green * f).round(), (blue * f).round());
  }

  /// Lighten Color by percent (100 -> white)
  Color szLightenColor([int percent = 10]) {
    assert(1 <= percent && percent <= 100);

    var p = percent / 100;

    return Color.fromARGB(alpha, red + ((255 - red) * p).round(),
        green + ((255 - green) * p).round(), blue + ((255 - blue) * p).round());
  }

  /// Color to Hex
  String get szColorToHexString => '#${value.toRadixString(16)}';

  /// Color to int value
  int get szColorToIntValue => value;
}
