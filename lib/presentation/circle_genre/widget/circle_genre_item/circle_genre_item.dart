import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/circle_genre/model/circle_genre_model.dart';

class CircleGenreItem extends StatelessWidget {
  const CircleGenreItem({
    Key? key,
    required this.genre,
  }) : super(key: key);

  final CircleGenreModel genre;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          /// サークルジャンル画像
          Image(
            image: AssetImage(genre.imagePath),
          ),

          /// サークルジャンル
          Text(genre.name),
        ],
      ),
    );
  }
}
