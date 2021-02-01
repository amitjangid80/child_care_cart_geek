// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/models/drawer_item.dart';
import 'package:ui_sample/utils/constants.dart';

class DrawerData extends StatelessWidget {
  final AnimationController animationController;

  DrawerData({@required this.animationController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      padding: const EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 12),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(width: 100, height: 100, image: AssetImage(kPersonIcon)),
            const SizedBox(height: 10),
            Text(kEmilyCyrus, style: Theme.of(context).textTheme.headline5.copyWith(color: kPrimaryColor)),
            ListView.separated(
              shrinkWrap: true,
              itemCount: drawerItemList.length,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, _position) => const Divider(height: 1),
              itemBuilder: (context, _position) {
                DrawerItem _drawerItem = drawerItemList[_position];

                return InkWell(
                  onTap: () {
                    animationController.isDismissed ? animationController.forward() : animationController.reverse();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      _drawerItem.name,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 16, color: kTextColor),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
