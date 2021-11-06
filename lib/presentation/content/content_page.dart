import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/content/widget/content_footer/content_footer.dart';
import 'package:kadai_info_flutter/presentation/content/widget/content_list/content_list.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          /// コンテンツ一覧
          ContentList(),

          /// フッター
          ContentFooter(),
        ],
      ),
    );
  }
}
