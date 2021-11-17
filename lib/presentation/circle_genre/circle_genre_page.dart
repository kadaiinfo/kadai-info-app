import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/core/constant/app_constant.dart';
import 'package:kadai_info_flutter/presentation/circle_genre/widget/circle_genre_list/circle_genre_list.dart';

class CircleGenrePage extends StatelessWidget {
  const CircleGenrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppConstant.outsidePadding),
        child: Column(
          children: const [
            /// ジャンル一覧
            CircleGenreList(),
          ],
        ),
      ),
    );
  }
}
