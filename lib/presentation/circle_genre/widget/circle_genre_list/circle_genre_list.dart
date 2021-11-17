import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/circle_genre/model/circle_genre_model.dart';
import 'package:kadai_info_flutter/presentation/circle_genre/widget/circle_genre_item/circle_genre_item.dart';
import 'package:kadai_info_flutter/presentation/circle_genre/widget/circle_genre_list/circle_genre_list_controller_provider.dart';

/// サークルジャンル一覧
class CircleGenreList extends HookConsumerWidget {
  const CircleGenreList({Key? key}) : super(key: key);

  static const int crossCount = 4;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genres = ref.watch(circleGenreListControllerProvider).genres;
    final splitGenres = [];
    genres.sublist(0, 0 + crossCount);
    return ListView.separated(
      itemBuilder: (context, index) {
        return const SizedBox();
      },
      separatorBuilder: (context, index) => const SizedBox(),
      itemCount: 50,
    );
  }
}

class _CircleGenreRow extends StatelessWidget {
  const _CircleGenreRow({
    Key? key,
    required this.genres,
  }) : super(key: key);

  final List<CircleGenreModel> genres;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: genres.map((e) => CircleGenreItem(genre: e)).toList(),
      ),
    );
  }
}
