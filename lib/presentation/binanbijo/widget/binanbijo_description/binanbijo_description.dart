// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/core/constant/binanbijo_constant.dart';

class BinanBijoDescription extends StatelessWidget {
  const BinanBijoDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _defaultTextStyle =
        DefaultTextStyle.of(context).style.apply(color: BinanbijoConstant.black);
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Image.asset(
              'asset/image/binanbijo2021/banner.jpg')
        ),
        Padding(
          padding: EdgeInsets.only(
              top: _defaultTextStyle.fontSize! * 0.8,
              bottom: _defaultTextStyle.fontSize! * 0.4),
          child: Text('美男美女SNAP2021',
              style: _defaultTextStyle.apply(
                  fontWeightDelta: 2, fontSizeFactor: 1.2)),
        ),
        Container(
            padding: EdgeInsets.symmetric(
                vertical: _defaultTextStyle.fontSize! * 0.25,
                horizontal: _defaultTextStyle.fontSize! * 2.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0), color: BinanbijoConstant.yellow),
            child: Text(
              '投票ページ',
              style: _defaultTextStyle.apply(
                  fontWeightDelta: 2, fontSizeFactor: 1.8),
            )),
        Padding(
          padding: EdgeInsets.only(top: _defaultTextStyle.fontSize! * 1.0),
          child: Text('頑張る鹿大生を応援しよう！', style: _defaultTextStyle),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: _defaultTextStyle.fontSize! * 0.5),
          child: Text('１日男女２票ずつ投票できます！', style: _defaultTextStyle),
        ),
        Row(children: [
          Expanded(flex: 3, child: Container()),
          Expanded(
              flex: 5,
              child:
                  Image.asset('asset/image/binanbijo2021/student_heart.png')),
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 5,
              child:
                  Image.asset('asset/image/binanbijo2021/general_heart.png')),
          Expanded(flex: 3, child: Container())
        ]),
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: _defaultTextStyle.fontSize! * 0.5),
          child: OutlinedButton.icon(
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(color: BinanbijoConstant.black)),
                  foregroundColor: MaterialStateProperty.all(BinanbijoConstant.black),
                  overlayColor: MaterialStateProperty.all(Colors.black12),
                  textStyle: MaterialStateProperty.all(
                      _defaultTextStyle.apply(fontWeightDelta: 2))),
              onPressed: () async {
                await showDialog(context: context, builder: (context) {
                  return SimpleDialog(
                    backgroundColor: Colors.transparent,
                    children: [
                      Image.asset('asset/image/binanbijo2021/scan_description.jpg'),
                    ],
                  );
                });
              },
              icon: const Icon(Icons.expand_less),
              label: const Text('鹿大生登録の方法を見る')),
        ),
      ],
    );
  }
}
