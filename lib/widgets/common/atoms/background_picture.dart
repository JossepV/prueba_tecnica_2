import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BackgroundPicture extends StatelessWidget {
  const BackgroundPicture({
    super.key,
    required this.imageUrl,
    this.radius = 16,
    this.height = 462,
    this.width,
  });
  final String imageUrl;
  final double radius;
  final double height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      clipBehavior: Clip.antiAlias,
      child: CachedNetworkImage(
        height: height,
        width: width ?? MediaQuery.of(context).size.width,
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: height,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).colorScheme.surfaceTint.withOpacity(0.3),
          ),
        ),
        errorWidget: (context, url, error) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: height,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).colorScheme.surfaceTint.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
