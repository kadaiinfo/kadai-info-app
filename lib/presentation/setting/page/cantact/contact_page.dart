// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/core/constant/app_constant.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('メールアドレス: ${AppConstant.contactMailAddress}'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('電話番号: ${AppConstant.contactPhoneNumber}'),
            )
          ]),
    );
  }
}
