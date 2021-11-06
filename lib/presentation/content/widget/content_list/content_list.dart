import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/circle_genre/circle_genre_page.dart';
import 'package:kadai_info_flutter/presentation/content/widget/content_item/content_item.dart';

class ContentList extends StatelessWidget {
  const ContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      children: [
        ContentItem(
          imagePath: 'asset/image/no_image.png',
          title: 'サークル',
          page: CircleGenrePage(),
        ),
        ContentItem(
          imagePath: 'asset/image/no_image.png',
          title: '美男美女',
          page: CircleGenrePage(),
        ),
        ContentItem(
          imagePath: 'asset/image/no_image.png',
          title: 'サークル',
          page: CircleGenrePage(),
        ),
      ],
    );
  }
}
