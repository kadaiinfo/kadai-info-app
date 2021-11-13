import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/external_link_button.dart';

class BinanBijoCandidates extends HookConsumerWidget {
  const BinanBijoCandidates({Key? key}) : super(key: key);

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
