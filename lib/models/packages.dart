// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';

class Package {
  int code;
  int amount;
  String icon;
  String packageName;
  String packageDesc;

  Package({
    @required this.code,
    @required this.icon,
    @required this.amount,
    @required this.packageName,
    @required this.packageDesc,
  });

  factory Package.fromJson(Map<String, dynamic> _packageJson) {
    debugPrint('package json details is: $_packageJson');

    return Package(
      code: _packageJson['Code'],
      icon: _packageJson['Icon'],
      amount: _packageJson['Amount'],
      packageName: _packageJson['PackageName'],
      packageDesc: _packageJson['PackageDesc'],
    );
  }
}

List<Package> packagesList = [
  Package(
    code: 1,
    amount: 2799,
    packageName: "One Day Package",
    icon: "assets/icons/one_day_package.png",
    packageDesc:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
  ),
  Package(
    code: 2,
    amount: 7497,
    packageName: "Three Day Package",
    icon: "assets/icons/three_day_package.png",
    packageDesc:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
  ),
  Package(
    code: 3,
    amount: 11495,
    packageName: "Five Day Package",
    icon: "assets/icons/five_day_package.png",
    packageDesc:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
  ),
  Package(
    code: 4,
    amount: 7497,
    packageName: "Weekend Package",
    icon: "assets/icons/weekend_package.png",
    packageDesc:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd",
  ),
];
