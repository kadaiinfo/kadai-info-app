import 'package:flutter/material.dart';

class TabBarColorModel {
  static const bbsGirls = Color(0xFFC72430);
  static const bbsBoys = Color(0xFF2D4195);
  static const grey = Color(0xFF868686);

  final Color girlsColor;
  final Color boysColor;
  final Color indicatorColor;

  TabBarColorModel({this.girlsColor = bbsGirls, this.boysColor = grey, this.indicatorColor = bbsGirls});
}
