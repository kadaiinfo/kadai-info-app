import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_dialog/controller/binanbijo_dialog_display_controller_provider.dart';

class BinanbijoVoteDialog extends ConsumerWidget {
  const BinanbijoVoteDialog({Key? key}) : super(key: key);

  static const _dialogBaseColor = Color(0xFFF8F8F8);
  static const _dialogBorderColor = Color(0xFF707070);
  static const _bbsBlack = Color(0xFF250B0D);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;
    final _defaultTextStyle =
        DefaultTextStyle.of(context).style.apply(fontWeightDelta: 2);
    final _displayController = ref.read(binanbijoDialogDisplayControllerProvider.notifier);
    return Dialog(
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: _dialogBorderColor),
          borderRadius: BorderRadius.all(Radius.circular(_width * 0.08))),
      child: Container(
        height: _width * 0.3,
        width: _width * 0.8,
        decoration: BoxDecoration(
            color: _dialogBaseColor,
            borderRadius: BorderRadius.circular(_width * 0.08)),
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Text('沙耶さんに投票しますか？',
                  style: DefaultTextStyle.of(context).style.apply(
                        fontWeightDelta: 2,
                        decoration: TextDecoration.underline,
                      )),
            ),
          ),
          Expanded(
              flex: 3,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _voteButton('はい', _defaultTextStyle, () {
                      _displayController.vote();
                    }),
                    _voteButton('いいえ', _defaultTextStyle, () {
                      _displayController.vote();
                    })
                  ]))
        ]),
      ),
    );
  }

  Widget _voteButton(String text, TextStyle textStyle, void Function() onTap) {
    return OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: textStyle.fontSize! * 3.0)),
          textStyle: MaterialStateProperty.all(textStyle.apply()),
          side: MaterialStateProperty.all(const BorderSide(color: _bbsBlack)),
          shape: MaterialStateProperty.all(const StadiumBorder()),
          foregroundColor: MaterialStateProperty.all(_bbsBlack),
          overlayColor: MaterialStateProperty.all(Colors.black12),
        ),
        onPressed: onTap,
        child: Text(text));
  }
}
