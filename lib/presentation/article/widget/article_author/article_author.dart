import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/model/article_author_model.dart';

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
        SizedBox(
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
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            author.name,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
