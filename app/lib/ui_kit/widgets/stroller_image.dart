import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class StrollerImage extends StatelessWidget {
  const StrollerImage({required this.imageUrl, required this.semanticLabel, super.key});

  final String imageUrl;
  final String semanticLabel;

  @override
  Widget build(BuildContext context) => imageUrl.isEmpty
      ? const _Placeholder()
      : CachedNetworkImage(
          imageUrl: imageUrl,
          fit: .contain,
          imageBuilder: (context, provider) => Image(
            image: provider,
            fit: .contain,
            semanticLabel: semanticLabel,
            color: context.colors.imagePlaceholder,
            colorBlendMode: .multiply,
          ),
          placeholder: (_, _) => const _Placeholder(),
          errorWidget: (_, _, _) => const _Placeholder(),
        );
}

class _Placeholder extends StatelessWidget {
  const _Placeholder();

  @override
  Widget build(BuildContext context) => Center(
    child: Icon(Icons.child_friendly_outlined, size: 56, color: context.colors.placeholderIcon),
  );
}
