/// Generate a random image URL using the [picsum.photos](https://picsum.photos/) service.
Uri generateRandomImage({
  int width = 256,
  int height = 256,
  String? seed,
  bool? blur,
  int? blurRadius,
  bool? grayscale,
}) {
  var uriBuilder = width == height
      ? "https://picsum.photos/$width"
      : "https://picsum.photos/$width/$height";
  if (blur != null && blur == true) {
    uriBuilder += "/blur";
  }
  if (blurRadius != null && 1 <= blurRadius && blurRadius <= 10) {
    uriBuilder += "?blur=$blurRadius";
  }
  if (grayscale != null && grayscale == true) {
    uriBuilder += "?grayscale";
  }
  if (seed != null) {
    uriBuilder += "?random=$seed";
  } else {
    uriBuilder += "?random=${DateTime.now().millisecondsSinceEpoch % 1048576}";
  }
  return Uri.parse(uriBuilder);
}

/// Generate a random image URL using the [picsum.photos](https://picsum.photos/) service.
String generateRandomImageUrl({
  int width = 256,
  int height = 256,
  String? seed,
  bool? blur,
  int? blurRadius,
  bool? grayscale,
}) {
  return generateRandomImage(
    width: width,
    height: height,
    seed: seed,
    blur: blur,
    blurRadius: blurRadius,
    grayscale: grayscale,
  ).toString();
}
