import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/circle/widget/circle_item/circle_item.dart';
import 'package:kadai_info_flutter/presentation/circle_genre/model/circle_genre_model.dart';

/// サークル一覧
class CircleList extends StatelessWidget {
  const CircleList({
    Key? key,
    required this.genre,
  }) : super(key: key);

  final CircleGenreModel genre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(genre.name),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: const [
          CircleItem(),
        ],
      ),
    );
  }
}
