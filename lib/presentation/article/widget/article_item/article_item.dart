import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_model.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_author/article_author.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_favorite_button/article_favorite_button.dart';

class ArticleItem extends HookConsumerWidget {
  const ArticleItem({
    Key? key,
    required this.article,
  }) : super(key: key);

  final ArticleModel article;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {},
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
                      Text(
                        article.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: IntrinsicHeight(
                              child: ArticleAuthor(author: article.author),
                            ),
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                article.publishedAt,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 5),
                              ArticleFavoriteButton(articleId: article.id),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 1.91 / 1,
                    child: article.thumbnailUrl != null
                        ? Image.network(article.thumbnailUrl!)
                        : Image.network(
                            'https://i0.wp.com/www.communitycom.jp/shop/wp-content/uploads/2019/11/eyecatch_img_01.png?fit=1130%2C593&ssl=1',
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
