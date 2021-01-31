// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/utils/constants.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(width: 60, height: 60, image: AssetImage(kPersonIcon)),
          const SizedBox(width: 20),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(kWelcome, style: Theme.of(context).textTheme.headline6),
              Text(
                kEmilyCyrus,
                style: Theme.of(context).textTheme.headline5.copyWith(color: kPrimaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
