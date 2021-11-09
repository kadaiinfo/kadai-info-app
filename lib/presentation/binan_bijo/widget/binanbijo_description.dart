import 'package:flutter/material.dart';

class BinanBijoDescription extends StatelessWidget {
  const BinanBijoDescription({Key? key}) : super(key: key);

  static const bbsBlack = Color(0xFF250B0D);
  static const bbsYellow = Color(0xFFF6D967);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xFFF7F5F5),
          width: double.maxFinite,
          child: Image.asset(
              'asset/logo/binanbijo2021/binanbijo2021logo-alpha.png'),
          height: 160.0,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 6.0),
          child: Text('美男美女SNAP2021',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: bbsBlack)),
        ),
        Container(
            padding:
                const EdgeInsets.symmetric(vertical: 6.0, horizontal: 28.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0), color: bbsYellow),
            child: const Text(
              '投票ページ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 24.0, color: bbsBlack),
            )),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text('頑張る鹿大生を応援しよう！', style: TextStyle(color: bbsBlack)),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Text('１日男女２票ずつ投票できます！', style: TextStyle(color: bbsBlack)),
        ),
        Row(children: [
          Expanded(flex: 6, child: Container()),
          Expanded(
              flex: 10,
              child:
                  Image.asset('asset/image/binanbijo2021/student_heart.png')),
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 10,
              child:
                  Image.asset('asset/image/binanbijo2021/general_heart.png')),
          Expanded(flex: 6, child: Container())
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: OutlinedButton.icon(
              style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(color: bbsBlack)),
                  foregroundColor: MaterialStateProperty.all(bbsBlack),
                  overlayColor: MaterialStateProperty.all(Colors.black12),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(fontWeight: FontWeight.bold))),
              onPressed: () {},
              icon: const Icon(Icons.expand_less),
              label: const Text('鹿大生登録の方法を見る')),
        ),
      ],
    );
  }
}
