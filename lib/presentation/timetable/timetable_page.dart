import 'package:flutter/material.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_adsense_banner/timetable_adsense_banner.dart';
import 'package:kadai_info_flutter/presentation/timetable/widget/timetable_lesson_list/timetable_lesson_list.dart';

/// 時間割
class TimetablePage extends StatelessWidget {
  const TimetablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2021年 後期'),
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
          children: const [
            /// 授業一覧
            TimetableLessonList(),

            /// 余白
            Spacer(),

            /// 広告バナー
            TimetableAdsenseBanner(),
          ],
        ),
      ),
    );
  }
}
