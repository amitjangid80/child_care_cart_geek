// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/utils/constants.dart';

class NannyAndBabySittingService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 40, right: 40, bottom: 40),
            padding: const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 20),
            decoration: BoxDecoration(
              color: kPrimaryColorLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: Text(
                    kNannyAndBabySittingService,
                    style: Theme.of(context).textTheme.headline6.copyWith(color: kTextColor),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 26,
                  child: RaisedButton(onPressed: () {}, color: kTextColor, child: Text(kBookNow)),
                ),
              ],
            ),
          ),
          Positioned(right: 0, child: Image(height: 260, image: AssetImage(kWomanIcon))),
        ],
      ),
    );
  }
}
