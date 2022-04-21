// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:kadai_info_flutter/core/constant/binanbijo_constant.dart';
import 'package:kadai_info_flutter/core/util/navigator_util.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/binanbijo_candidate_convert.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/model/binanbijo_candidate_model.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidate_tile/binanbijo_candidate_picture.dart';
import 'package:kadai_info_flutter/presentation/binanbijo/widget/binanbijo_candidate_tile/binanbijo_candidate_picture_stack.dart';
import 'package:kadai_info_flutter/presentation/common/web_view_page/web_view_page.dart';

class BinanbijoCandidateTile extends HookConsumerWidget {
  const BinanbijoCandidateTile({Key? key, required this.candidate})
      : super(key: key);

  final BinanbijoCandidateModel candidate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _topString(candidate.description),
          (candidate.canVoted)
              ? BinanbijoCandidatePictureStack(candidate: candidate)
              : BinanbijoCandidatePicture(candidate: candidate),
          _bottomString(candidate.entryNumber, candidate.name)
        ],
      ),
      onTap: () async {
        final _domain = await const BinanbijoConstant().getDomainName();
        final _id = BinanbijoCandidateConvert().toId(candidate.name);
        NavigatorUtil.push(context: context, page: WebViewPage('https://$_domain/$_id'));
      },
    );
  }

  Widget _topString(String description) {
    final context = useContext();
    return Padding(
      padding:
          EdgeInsets.only(left: DefaultTextStyle.of(context).style.fontSize!),
      child: Text(description,
          style: DefaultTextStyle.of(context)
              .style
              .apply(fontSizeFactor: 0.8, fontWeightDelta: 2)),
    );
  }

  Widget _bottomString(int entryNumber, String name) {
    final context = useContext();
    return Center(
      child: Text('No.$entryNumber　$name',
          style: DefaultTextStyle.of(context).style.apply(fontWeightDelta: 2)),
    );
  }
}
