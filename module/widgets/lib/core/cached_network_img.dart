import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImg extends StatelessWidget {
  const CachedNetworkImg(
      {super.key,
      required this.imageUrl,
      this.emptyWidget,
      this.boxFit = BoxFit.cover,
      this.loadingWidget,
      this.dynamicHeight,
      this.dynamicWidth});

  final String imageUrl;

  final BoxFit? boxFit;

  //if imageUrl is Null
  final Widget? emptyWidget;

  final Widget? loadingWidget;

  final double? dynamicHeight;
  final double? dynamicWidth;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return emptyWidget ?? const SizedBox();
    } else {
      return CachedNetworkImage(
        height: dynamicHeight,
        width: dynamicWidth,
        progressIndicatorBuilder: (context, url, progress) =>
            loadingWidget ?? const Center(child: LinearProgressIndicator()),
        imageUrl: imageUrl,
        fit: boxFit,
        // errorWidget: (context, url, error) =>
        //     emptyWidget ?? const SizedBox(child: Text('error')),
      );
    }
  }
}
