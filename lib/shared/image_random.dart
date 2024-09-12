/// Generate a random image URL using the [picsum.photos](https://picsum.photos/) service.
Uri generateRandomImage({
  int width = 256,
  int height = 256,
  bool? blur,
  int? blurRadius,
  bool? grayscale,
}) {
  final uriBuilder = width == height
      ? Uri.https('picsum.photos', '/$width')
      : Uri.https('picsum.photos', '/$width/$height');
  if (blur != null && blur == true) {
    uriBuilder.queryParameters['blur'] = "";
  }
  if (blurRadius != null && 1 <= blurRadius && blurRadius <= 10) {
    uriBuilder.queryParameters['blur'] = blurRadius.toString();
  }
  if (grayscale != null && grayscale == true) {
    uriBuilder.queryParameters['grayscale'] = "";
  }
  uriBuilder.queryParameters['random'] =
      (DateTime.now().millisecondsSinceEpoch % 1048576).toString();
  return uriBuilder;
}

/// Generate a random image URL using the [picsum.photos](https://picsum.photos/) service.
String generateRandomImageUrl({
  int width = 256,
  int height = 256,
  bool? blur,
  int? blurRadius,
  bool? grayscale,
}) {
  return generateRandomImage(
    width: width,
    height: height,
    blur: blur,
    blurRadius: blurRadius,
    grayscale: grayscale,
  ).toString();
}
