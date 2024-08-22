import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';

Future<Color> getAverageColorFromAsset(String assetPath) async {
  // Load image asset as ByteData
  final ByteData data = await rootBundle.load(assetPath);
  final Uint8List bytes = data.buffer.asUint8List();

  // Decode the image
  final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;

  // Calculate average color
  int r = 0, g = 0, b = 0, count = 0;

  for (int y = 0; y < image.height; y++) {
    for (int x = 0; x < image.width; x++) {
      final int pixel = image.getPixel(x, y);
      r += img.getRed(pixel);
      g += img.getGreen(pixel);
      b += img.getBlue(pixel);
      count++;
    }
  }

  final int avgR = (r / count).round();
  final int avgG = (g / count).round();
  final int avgB = (b / count).round();

  return Color.fromARGB(255, avgR, avgG, avgB);
}
