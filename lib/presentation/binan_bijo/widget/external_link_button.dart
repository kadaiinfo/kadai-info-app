import 'package:flutter/material.dart';

class ExternalLinkButton extends StatelessWidget {
  const ExternalLinkButton({Key? key}) : super(key: key);

  static const bbsBlack = Color(0xFF250B0D);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
      child: OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.launch),
          label: const Text('美男美女SNAP2021ページへ'),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 15.0)),
              side: MaterialStateProperty.all(
                  const BorderSide(color: bbsBlack, width: 2.0)),
              shape: MaterialStateProperty.all(const StadiumBorder()),
              foregroundColor: MaterialStateProperty.all(bbsBlack),
              overlayColor: MaterialStateProperty.all(Colors.black12),
              textStyle: MaterialStateProperty.all(
                  const TextStyle(fontWeight: FontWeight.bold)))),
    );
  }
}
