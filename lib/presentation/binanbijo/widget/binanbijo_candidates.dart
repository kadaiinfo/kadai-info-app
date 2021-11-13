import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/external_link_button.dart';

class BinanBijoCandidates extends HookConsumerWidget {
  const BinanBijoCandidates({Key? key}) : super(key: key);

  static const microCMSResponse = {
    "contents": [
      {
        "id": "01taiga",
        "createdAt": "2021-11-11T02:55:06.075Z",
        "updatedAt": "2021-11-11T02:55:39.171Z",
        "publishedAt": "2021-11-11T02:55:06.075Z",
        "revisedAt": "2021-11-11T02:55:39.171Z",
        "name": "たいが",
        "entryNumber": 1,
        "picture": {
          "url":
              "https://images.microcms-assets.io/assets/0f7ff9cec2fb4bc7bc17cdd49504ac8f/61383f9dc1ab4f2f8b6f49c1195cae5d/binanbijo2021logo.png",
          "height": 2552,
          "width": 2552
        },
        "description": "優勝",
        "isVoted": true
      }
    ],
    "totalCount": 1,
    "offset": 0,
    "limit": 10
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(physics: const ClampingScrollPhysics(), children: [
      for (final string in ['a', 'b', 'c', 'd', 'e']) row(),
      const ExternalLinkButton()
    ]);
  }
}

Widget row() {
  return Row(children: [
    Expanded(flex: 5, child: Image.asset('asset/image/no_image.png')),
    Expanded(flex: 1, child: Container()),
    Expanded(flex: 5, child: Image.asset('asset/image/no_image.png')),
  ]);
}
