class ColorHelper {
  static int hexColor(String? hexColor) {
    hexColor ??= 'FCF6EB';
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    var result = int.tryParse(hexColor, radix: 16);
    return result ?? 4294768363;
  }
}
