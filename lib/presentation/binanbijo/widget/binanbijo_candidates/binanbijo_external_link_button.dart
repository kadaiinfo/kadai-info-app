import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/core/constant/binanbijo_constant.dart';
import 'package:kadai_info_flutter/core/util/navigator_util.dart';
import 'package:kadai_info_flutter/presentation/common/web_view_page/web_view_page.dart';

class BinanbijoExternalLinkButton extends StatelessWidget {
  const BinanbijoExternalLinkButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _defaultTextStyle =
        DefaultTextStyle.of(context).style.apply(fontWeightDelta: 2);
    final _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: _defaultTextStyle.fontSize! * 3.0,
          horizontal: _width * 0.15),
      child: OutlinedButton.icon(
          onPressed: () async {
            NavigatorUtil.push(
                context: context,
                page: const WebViewPage('https://binanbijosnap.com/2021'));
          },
          icon: const Icon(Icons.launch),
          label: const Text('美男美女SNAP2021ページへ'),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                  vertical: _defaultTextStyle.fontSize! * 1.0)),
              side: MaterialStateProperty.all(
                  const BorderSide(color: BinanbijoConstant.black, width: 2.0)),
              shape: MaterialStateProperty.all(const StadiumBorder()),
              foregroundColor: MaterialStateProperty.all(BinanbijoConstant.black),
              overlayColor: MaterialStateProperty.all(Colors.black12),
              textStyle: MaterialStateProperty.all(_defaultTextStyle))),
    );
  }
}
