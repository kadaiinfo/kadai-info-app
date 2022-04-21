// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/article/widget/article_favorite_button/article_favorite_button_controller_provider.dart';

class ArticleFavoriteButton extends ConsumerWidget {
  const ArticleFavoriteButton({
    Key? key,
    required this.articleId,
  }) : super(key: key);

  final String articleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref
        .watch(articleFavoriteButtonControllerProvider(articleId))
        .isFavorite;
    final controller =
        ref.read(articleFavoriteButtonControllerProvider(articleId).notifier);
    return InkWell(
      onTap:
          isFavorite ? controller.releaseFavorite : controller.registerFavorite,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
        color: isFavorite ? FlexColor.redLightPrimary : Colors.grey,
      ),
    );
  }
}
