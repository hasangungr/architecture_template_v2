import 'package:architecture_template_v2/core/extensions/context_extension.dart';
 import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:widgets/core/cached_network_img.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.url,
  });

  final String url;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImg(
      imageUrl: url,
      loadingWidget: Assets.lottie.animZombie.lottie(package: 'gen'),
      dynamicHeight: context.dynamicHeight(0.5),
      dynamicWidth: context.dynamicWidth(0.5),
    );
  }
}
