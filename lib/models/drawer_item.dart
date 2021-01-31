// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/utils/constants.dart';

class DrawerItem {
  final String name;

  DrawerItem({@required this.name});
}

List<DrawerItem> drawerItemList = [
  DrawerItem(name: kHome),
  DrawerItem(name: kBookANanny),
  DrawerItem(name: kHowItWorks),
  DrawerItem(name: kWhyNannyVanny),
  DrawerItem(name: kMyBookings),
  DrawerItem(name: kMyProfile),
  DrawerItem(name: kSupport),
];
