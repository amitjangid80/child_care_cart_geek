// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/utils/constants.dart';

class YourCurrentBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            kYourCurrentBooking,
            style: Theme.of(context).textTheme.headline6.copyWith(color: kTextColor),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: kGreyColor, blurRadius: 10, spreadRadius: 0.5)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    kOneDayPackage,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 16, color: kPrimaryColor),
                  ),
                  Container(height: 26, child: RaisedButton(onPressed: () {}, child: Text(kStart))),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _DateTimeWidget(title: kFrom, time: '11 pm', date: '12.08.2020'),
                  const Spacer(),
                  _DateTimeWidget(title: kTo, time: '07 am', date: '13.08.2020'),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 26,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      color: kTextColor,
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      icon: Image(width: 16, height: 16, color: Colors.white, image: AssetImage(kStarIcon)),
                      label: Text(
                        kRateUs,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 26,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      color: kTextColor,
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      icon: Image(width: 16, height: 16, color: Colors.white, image: AssetImage(kLocationPinIcon)),
                      label: Text(
                        kGeoLocation,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 26,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      color: kTextColor,
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      icon: Image(width: 16, height: 16, color: Colors.white, image: AssetImage(kRadioIcon)),
                      label: Text(
                        kSurveillance,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DateTimeWidget extends StatelessWidget {
  final String title, date, time;

  _DateTimeWidget({@required this.title, @required this.date, @required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyText1),
        const SizedBox(height: 8),
        _IconTextWidget(description: date, icon: kCalendarIcon),
        const SizedBox(height: 8),
        _IconTextWidget(icon: kClockIcon, description: time),
      ],
    );
  }
}

class _IconTextWidget extends StatelessWidget {
  final String icon, description;

  _IconTextWidget({@required this.icon, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(width: 16, height: 16, image: AssetImage(icon)),
        const SizedBox(width: 5),
        Text(description, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
