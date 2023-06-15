import 'package:allxclusive/core/theme/colors.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class ShimmerImage extends StatelessWidget {
  final String? url;
  final Widget? child;
  final double? radius;
  const ShimmerImage({Key? key, required this.url, this.child, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: Stack(
        children: [
          child ?? SizedBox.shrink(),
          url == null ? SizedBox.shrink() : SizedBox(
              width: double.infinity,
              child: FancyShimmerImage(boxFit: BoxFit.cover, shimmerHighlightColor: KColors.mainAccent, imageUrl: url!,))
        ],
      ),
    );
  }
}
