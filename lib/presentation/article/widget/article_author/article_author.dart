import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/core/util/navigator_util.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_author_model.dart';
import 'package:kadai_info_flutter/presentation/common/web_view_page/web_view_page.dart';

class ArticleAuthor extends ConsumerWidget {
  const ArticleAuthor({
    Key? key,
    required this.author,
  }) : super(key: key);

  final ArticleAuthorModel author;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        /// アバター画像
        _AuthorThumbnail(author: author),
        const SizedBox(width: 10),

        /// 著者名
        _AuthorName(author: author),
      ],
    );
  }
}

class _AuthorName extends StatelessWidget {
  const _AuthorName({
    Key? key,
    required this.author,
  }) : super(key: key);

  final ArticleAuthorModel author;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        author.name,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class _AuthorThumbnail extends StatelessWidget {
  const _AuthorThumbnail({
    Key? key,
    required this.author,
  }) : super(key: key);

  final ArticleAuthorModel author;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigatorUtil.push(
          context: context,
          page: WebViewPage(author.link),
          fullscreenDialog: true,
        );
      },
      child: SizedBox(
        height: 25,
        width: 25,
        child: CircleAvatar(
          backgroundImage: author.thumbnailUrl != null
              ? NetworkImage(
                  author.thumbnailUrl!,
                )
              : NetworkImage(
                  'https://i0.wp.com/www.communitycom.jp/shop/wp-content/uploads/2019/11/eyecatch_img_01.png?fit=1130%2C593&ssl=1',
                ) as ImageProvider,
        ),
      ),
    );
  }
}
