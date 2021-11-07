import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/core/util/navigator_util.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_author_model.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_model.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_author/article_author.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_favorite_button/article_favorite_button.dart';
import 'package:kadai_info_flutter/presentation/common/web_view_page/web_view_page.dart';

class ArticleItem extends HookConsumerWidget {
  const ArticleItem({
    Key? key,
    required this.article,
  }) : super(key: key);

  final ArticleModel article;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => openArticle(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// 記事タイトル
                      _Title(title: article.title),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// 著者
                          _Author(author: article.author),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              /// 公開日
                              _PublishedText(text: article.publishedAt),
                              const SizedBox(width: 5),

                              /// お気に入りボタン
                              ArticleFavoriteButton(articleId: article.id),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),

              /// サムネイル画像
              _Thumbnail(thumbnailUrl: article.thumbnailUrl),
            ],
          ),
        ),
      ),
    );
  }

  /// 記事を見る
  Future<void> openArticle(BuildContext context) async {
    NavigatorUtil.push(
      context: context,
      page: WebViewPage(article.link),
      fullscreenDialog: true,
    );
  }
}

/// 著者
class _Author extends StatelessWidget {
  const _Author({
    Key? key,
    required this.author,
  }) : super(key: key);

  final ArticleAuthorModel author;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IntrinsicHeight(
        child: ArticleAuthor(author: author),
      ),
    );
  }
}

/// 記事タイトル
class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/// 公開日
class _PublishedText extends StatelessWidget {
  const _PublishedText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }
}

/// サムネイル画像
class _Thumbnail extends StatelessWidget {
  const _Thumbnail({
    Key? key,
    required this.thumbnailUrl,
  }) : super(key: key);

  final String? thumbnailUrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 1.91 / 1,
          child: thumbnailUrl != null
              ? Image.network(thumbnailUrl!, fit: BoxFit.cover)
              : Image.asset(
                  'asset/image/no_image.png',
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
