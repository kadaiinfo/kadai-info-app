import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_description.dart';
import 'package:kadai_info_flutter/presentation/binan_bijo/widget/binanbijo_tabs/binanbijo_tabs.dart';

/// 美男美女投票画面
class BinanBijoPage extends StatelessWidget {
  const BinanBijoPage({Key? key}) : super(key: key);

  static const bbsBlack = Color(0xFF250B0D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('美男美女SNAP2021'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            BinanBijoDescription(),
            BinanBijoTabs()
          ],
        ),
      ),
    );
  }
}
