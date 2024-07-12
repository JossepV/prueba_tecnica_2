import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CardCircleAvatar extends StatelessWidget {
  const CardCircleAvatar({
    required this.imageUrl,
    this.radius = 24,
    super.key,
  });

 final String imageUrl;
 final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      clipBehavior: Clip.antiAlias,
      child: CachedNetworkImage(

      height: radius * 2,
      width: radius * 2,
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: CircleAvatar(
            backgroundColor:  Theme.of(context).colorScheme.surfaceTint.withOpacity(0.3),
                radius: radius,
              ),
        ),
        errorWidget: (context, url, error) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: CircleAvatar(
            backgroundColor:  Theme.of(context).colorScheme.surfaceTint.withOpacity(0.3),
                radius: radius,
              ),
        ),
      ),
    );
  }
}
