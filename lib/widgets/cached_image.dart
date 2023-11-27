import 'package:cached_network_image/cached_network_image.dart';
import 'package:digisalad_code_test_vicksonng/widgets/shimmer_wrapper.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
    this.placeholder,
    this.errorWidget,
  });

  final Widget? errorWidget;
  final BoxFit? fit;
  final double? height;
  final Widget? placeholder;
  final String? url;
  final double? width;

  Widget _shimmerPlaceholder(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ShimmerWrapper(
          child: Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            color: Theme.of(context).splashColor,
          ),
        );
      },
    );
  }

  Widget _defaultErrorWidget(BuildContext context) {
    return const Icon(
      Icons.error,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url ?? '',
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, url) =>
          placeholder ?? _shimmerPlaceholder(context),
      errorWidget: (context, url, error) =>
          errorWidget ?? _defaultErrorWidget(context),
    );
  }
}
