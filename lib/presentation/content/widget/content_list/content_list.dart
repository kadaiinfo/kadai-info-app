// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/binanbijo/binanbijo_page.dart';
import 'package:kadai_info_flutter/presentation/content/widget/content_item/content_item.dart';

class ContentList extends StatelessWidget {
  const ContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: const [
          /// サークル
          // _CircleContent(),

          /// 美男美女
          _BinanBijoContent(),
        ],
      ),
    );
  }
}

class _BinanBijoContent extends StatelessWidget {
  const _BinanBijoContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ContentItem(
      imagePath: 'asset/logo/binanbijo2021/binanbijo2021logo.png',
      title: '美男美女SNAP2021',
      page: BinanbijoPage(),
    );
  }
}

// class _CircleContent extends StatelessWidget {
//   const _CircleContent({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const ContentItem(
//       imagePath: 'asset/image/circle/artboard.png',
//       title: 'サークル',
//       page: CircleGenrePage(),
//     );
//   }
// }
