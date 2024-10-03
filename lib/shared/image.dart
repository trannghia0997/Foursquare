import 'package:uri/uri.dart';

/// Generate a placeholder image URL using the [https://placehold.co/](https://placehold.co/) service.
Uri generatePlaceholderImage({
  int width = 128,
  int height = 128,
  String format = "png",
}) {
  var uriBuilder = UriBuilder();
  uriBuilder.scheme = "https";
  uriBuilder.host = "placehold.co";
  uriBuilder.path = "/$width/$height";
  uriBuilder.queryParameters["format"] = format;
  return uriBuilder.build();
}

/// Generate a random image URL using the [picsum.photos](https://picsum.photos/) service.
Uri generateRandomImage({
  int width = 128,
  int height = 128,
  String? seed,
  bool? blur,
  int? blurRadius,
  bool? grayscale,
}) {
  var uriBuilder = UriBuilder();
  uriBuilder.scheme = "https";
  uriBuilder.host = "picsum.photos";
  uriBuilder.path = width == height ? "/$width" : "/$width/$height";
  if (blur != null && blur == true) {
    if (blurRadius != null && 1 <= blurRadius && blurRadius <= 10) {
      uriBuilder.queryParameters["blur"] = blurRadius.toString();
    } else {
      uriBuilder.queryParameters["blur"] = "";
    }
  }
  if (grayscale != null && grayscale == true) {
    uriBuilder.queryParameters["grayscale"] = "";
  }
  if (seed != null) {
    uriBuilder.queryParameters["random"] = seed.hashCode.toString();
  } else {
    uriBuilder.queryParameters["random"] =
        (DateTime.now().millisecondsSinceEpoch % 1048576).toString();
  }
  return uriBuilder.build();
}

/// Generate a random image URL using the [picsum.photos](https://picsum.photos/) service.
String generateRandomImageUrl({
  int width = 128,
  int height = 128,
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

/// Get an image from the [picsum.photos](https://picsum.photos/) service using id.
Uri getPicsumImageById({
  required int id,
  int width = 128,
  int height = 128,
  bool? blur,
  int? blurRadius,
  bool? grayscale,
}) {
  final modulatedId = id % 1024;
  var uriBuilder = UriBuilder();
  uriBuilder.scheme = "https";
  uriBuilder.host = "picsum.photos";
  uriBuilder.path = width == height
      ? "id/$modulatedId/$width"
      : "id/$modulatedId/$width/$height";
  if (blur != null && blur == true) {
    if (blurRadius != null && 1 <= blurRadius && blurRadius <= 10) {
      uriBuilder.queryParameters["blur"] = blurRadius.toString();
    } else {
      uriBuilder.queryParameters["blur"] = "";
    }
  }
  if (grayscale != null && grayscale == true) {
    uriBuilder.queryParameters["grayscale"] = "";
  }
  return uriBuilder.build();
}

String getPicsumImageUrlById({
  required int id,
  int width = 128,
  int height = 128,
  bool? blur,
  int? blurRadius,
  bool? grayscale,
}) {
  return getPicsumImageById(
    id: id,
    width: width,
    height: height,
    blur: blur,
    blurRadius: blurRadius,
    grayscale: grayscale,
  ).toString();
}
