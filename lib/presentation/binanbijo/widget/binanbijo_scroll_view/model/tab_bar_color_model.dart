// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:kadai_info_flutter/core/constant/binanbijo_constant.dart';

class TabBarColorModel {
  static const bbsGirls = BinanbijoConstant.girls;
  static const bbsBoys = BinanbijoConstant.boys;
  static const grey = BinanbijoConstant.unselected;

  final Color girlsColor;
  final Color boysColor;
  final Color indicatorColor;

  TabBarColorModel({this.girlsColor = bbsGirls, this.boysColor = grey, this.indicatorColor = bbsGirls});
}
