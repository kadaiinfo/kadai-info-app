// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/presentation/timetable_edit/widget/timetable_edit_color_form/timetable_edit_color_form.dart';

class TimetableEditPage extends StatelessWidget {
  const TimetableEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('金：3限目（2021年度）'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                    child: _TextFormField(
                      isRequired: true,
                      iconData: Icons.edit,
                      labelText: '講義名',
                    ),
                  ),
                  SizedBox(width: 20),
                  TimetableEditColorForm(),
                ],
              ),
              const _TextFormField(
                iconData: Icons.meeting_room,
                labelText: '教室',
              ),
              const _TextFormField(
                iconData: Icons.person,
                labelText: '教師',
              ),
              const _TextFormField(
                iconData: Icons.description,
                labelText: 'メモ',
                keyboardType: TextInputType.multiline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextFormField extends StatelessWidget {
  const _TextFormField({
    Key? key,
    this.isRequired = false,
    required this.iconData,
    required this.labelText,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  final IconData iconData;
  final String labelText;
  final bool isRequired;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: '${isRequired ? "*" : ""}$labelText',
        prefixIcon: Icon(iconData),
      ),
      keyboardType: keyboardType,
      maxLines: keyboardType == TextInputType.multiline ? null : 1,
    );
  }
}
