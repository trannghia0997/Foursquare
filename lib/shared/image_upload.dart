import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:foursquare/shared/models/misc/firebase.dart';
import 'package:http/http.dart' as http;
import 'package:mime/mime.dart';

const projectID = "sq-app-2024.appspot.com";

String generateNonce(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  final rand = Random();
  return Iterable.generate(length, (_) => chars[rand.nextInt(chars.length)])
      .join();
}

Future<StorageObjectResponse?> uploadImageToFirebase(String filePath) async {
  final file = File(filePath);
  final mimeType = lookupMimeType(filePath);

  if (mimeType == null || !mimeType.startsWith('image/')) {
    debugPrint('Invalid file type');
    return null;
  }

  final fileExtension = file.uri.pathSegments.last.split('.').last;
  final nonce = generateNonce(16);
  final fileName = '$nonce.$fileExtension';
  final url = Uri.parse(
    'https://firebasestorage.googleapis.com/v0/b/$projectID/o/product-images%2F$fileName',
  );
  final headers = {
    "Content-Type": mimeType,
  };

  try {
    final fileBytes = await file.readAsBytes();
    final response = await http.post(url, headers: headers, body: fileBytes);

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      return StorageObjectResponse.fromJson(responseData);
    } else {
      debugPrint('Failed to upload image: ${response.statusCode}');
    }
  } catch (e) {
    debugPrint('Error uploading image: $e');
  }
  return null;
}

Uri constructFirebaseStorageUrl(StorageObjectResponse response) {
  final encodedName = Uri.encodeComponent(response.name);
  return Uri.parse(
      'https://firebasestorage.googleapis.com/v0/b/$projectID/o/$encodedName?alt=media');
}
