// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/core/util/navigator_util.dart';

/// コンテンツ
class ContentItem extends StatelessWidget {
  const ContentItem({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.page,
  }) : super(key: key);

  final Widget page;
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: GestureDetector(
          onTap: () => NavigatorUtil.push(context: context, page: page),
          child: Column(
            children: [
              /// コンテンツ画像
              _ContentImage(imagePath: imagePath),

              /// 余白
              const SizedBox(height: 5),

              /// コンテンツタイトル
              _Title(title: title),
            ],
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
    );
  }
}

class _ContentImage extends StatelessWidget {
  const _ContentImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.white,
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
