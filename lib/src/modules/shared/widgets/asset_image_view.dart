import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum AssetImageType {
  svg,
  image,
}

class AssetImageView extends StatelessWidget {
  const AssetImageView({
    Key? key,
    required this.fileName,
    required this.type,
    this.height,
    this.width,
    this.color,
    this.scale,
  }) : super(key: key);

  final String fileName;
  final AssetImageType type;
  final double? height;
  final double? width;
  final Color? color;
  final double? scale;

  @override
  Widget build(BuildContext context) {
    return _getView();
  }

  Widget _getView() {
    String mimType = fileName.split(".").last;
    String assetType = (type == AssetImageType.svg) ? "svg" : "images";
    String path = "assets/$assetType/$fileName";

    assert(
      mimType.isNotEmpty,
      "Image file extension needs to be png, svg, jpg, jpeg",
    );

    switch (mimType) {
      case "svg":
        return SvgPicture.asset(
          path,
          height: height,
          width: width,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
            color ?? Colors.black,
            BlendMode.srcIn,
          ),
        );
      case "png":
      case "jpg":
      case "jpeg":
        return Image.asset(
          path,
          height: height,
          width: width,
          color: color,
          scale: scale,
        );
      default:
        return Icon(
          Icons.image_not_supported_outlined,
          size: width,
          color: color,
        );
    }
  }
}
