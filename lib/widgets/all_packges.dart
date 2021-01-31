// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/models/packages.dart';
import 'package:ui_sample/utils/constants.dart';

class AllPackages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, left: 30, right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(kPackages, style: Theme.of(context).textTheme.headline6.copyWith(color: kTextColor)),
          ListView.builder(
            shrinkWrap: true,
            itemCount: packagesList.length,
            padding: const EdgeInsets.only(bottom: 40),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, _position) {
              Package _package = packagesList[_position];

              Color _btnColor = ((_position % 2) == 0) ? kPrimaryColor : kBlueColor;
              Color _bgColor = ((_position % 2) == 0) ? kPrimaryColorLight : kLightBlueColor;

              return Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(color: _bgColor, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(width: 40, height: 40, image: AssetImage(_package.icon)),
                        Container(
                          height: 30,
                          child: RaisedButton(
                            color: _btnColor,
                            onPressed: () {},
                            child: Text(
                              kBookNow,
                              style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _package.packageName,
                          style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 16, color: kTextColor),
                        ),
                        Text(
                          '₹ ${_package.amount}',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 16, color: kTextColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _package.packageDesc,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
