import 'package:flutter/material.dart';

class BinanbijoExternalLinkButton extends StatelessWidget {
  const BinanbijoExternalLinkButton({Key? key}) : super(key: key);

  static const bbsBlack = Color(0xFF250B0D);

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
          onPressed: () {},
          icon: const Icon(Icons.launch),
          label: const Text('美男美女SNAP2021ページへ'),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                  vertical: _defaultTextStyle.fontSize! * 1.0)),
              side: MaterialStateProperty.all(
                  const BorderSide(color: bbsBlack, width: 2.0)),
              shape: MaterialStateProperty.all(const StadiumBorder()),
              foregroundColor: MaterialStateProperty.all(bbsBlack),
              overlayColor: MaterialStateProperty.all(Colors.black12),
              textStyle: MaterialStateProperty.all(_defaultTextStyle))),
    );
  }
}
