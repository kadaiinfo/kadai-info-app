import 'package:flutter/material.dart';

class BinanBijoPersons extends StatelessWidget {
  const BinanBijoPersons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      for(final string in ['a', 'b', 'c', 'd', 'e']) row()
    ],);
  }
}

Widget row() {
  return Row(children: [
    Expanded(flex: 5, child: Image.asset('asset/image/no_image.png')),
    Expanded(flex: 1, child: Container()),
    Expanded(flex: 5, child: Image.asset('asset/image/no_image.png')),
  ]);
}
