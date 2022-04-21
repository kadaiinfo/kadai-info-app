// Flutter imports:
import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText(this.error, {Key? key}) : super(key: key);

  final dynamic error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error.toString(),
      ),
    );
  }
}
