import 'package:flutter/material.dart';

class MyAssetImage extends StatelessWidget {

  @required final String image;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final ImageFormat? format;

  const MyAssetImage(this.image, { this.width, this.height, this.fit, this.format});

  static String getImagePath(String name, {ImageFormat format = ImageFormat.png}) {
    return 'images/$name.${format.value}';
  }


  @override
  Widget build(BuildContext context) {
    return Image.asset(
      getImagePath(image),
      width: width,
      height: height,
      fit: fit,
    );
  }
}

enum ImageFormat {
  png,
  jpg,
  gif,
  webp,
}

extension _ImageFormatExtension on ImageFormat {
  String get value => ['png', 'jpg', 'gif', 'webp'][index];
}