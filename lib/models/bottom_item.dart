// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/utils/constants.dart';

class BottomItem {
  String icon;
  String title;

  BottomItem({@required this.icon, @required this.title});
}

List<BottomItem> bottomItemList = [
  BottomItem(title: kHome, icon: kHomeIcon),
  BottomItem(title: kPackages, icon: kSaleIcon),
  BottomItem(title: kBookings, icon: kClockIcon),
  BottomItem(title: kProfile, icon: kUserIcon),
];
