// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/utils/constants.dart';

class MaterialCardWithPin extends StatelessWidget {
  final Widget child;

  MaterialCardWithPin({
    @required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Stack(
        children: [
          Container(
            child: child,
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            padding: const EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: kGreyColor, blurRadius: 10, spreadRadius: 0.5)],
            ),
          ),
          Positioned(top: 0, left: 0, child: Image(height: 140, image: AssetImage(kPinIcon))),
        ],
      ),
    );
  }
}
