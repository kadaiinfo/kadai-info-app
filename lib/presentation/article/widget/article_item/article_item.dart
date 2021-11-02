import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/article/widget/article_item/article_item_controller_provider.dart';

class ArticleItem extends HookConsumerWidget {
  const ArticleItem({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articleItemControllerProvider(id));
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
                        '記事のタイトル記事の',
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
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        'https://i0.wp.com/www.communitycom.jp/shop/wp-content/uploads/2019/11/eyecatch_img_01.png?fit=1130%2C593&ssl=1',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Kodai Nakahara',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '2021.9.3',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
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
                    child: Image.network(
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
