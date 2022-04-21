// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/content/widget/content_list/content_list.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Column(
        children: const [
          ContentList()
        ],
      ),
    );
  }
}
