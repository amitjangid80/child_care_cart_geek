// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/routes/routes.dart';
import 'package:ui_sample/utils/constants.dart';
import 'package:ui_sample/widgets/material_card_with_pin.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final List<String> _cityList = [kMumbai, kThane, kJaipur];
  final List<String> _noOfChildrenList = [kOne, kTwo, kMore];
  final List<String> _relationWithChildList = [kMother, kFather];

  String _selectedCity = kMumbai, _selectedNoOfChildren = kOne, _selectedRelation = kMother;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(child: Image(image: AssetImage(kBgIcon))),
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 40),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(width: 100, height: 100, image: AssetImage(kLogoIcon)),
                      const SizedBox(height: 30),
                      Text(kSignUpToContinue, style: Theme.of(context).textTheme.headline5.copyWith(color: kTextColor)),
                      MaterialCardWithPin(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              autofocus: false,
                              autocorrect: false,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: kParentName,
                                suffixIcon: Image(width: 10, height: 15, image: AssetImage(kUserIcon)),
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: 14,
                                  maxWidth: 14,
                                  minHeight: 14,
                                  maxHeight: 14,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              autofocus: false,
                              autocorrect: false,
                              keyboardType: TextInputType.numberWithOptions(),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                              ],
                              decoration: InputDecoration(
                                labelText: kMobileNumber,
                                suffixIcon: Image(width: 10, height: 15, image: AssetImage(kPhoneIcon)),
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: 24,
                                  maxWidth: 24,
                                  minHeight: 24,
                                  maxHeight: 24,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              autofocus: false,
                              autocorrect: false,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: kEmailId,
                                suffixIcon: Image(width: 10, height: 15, image: AssetImage(kEmailIcon)),
                                suffixIconConstraints: BoxConstraints(
                                  minWidth: 14,
                                  maxWidth: 14,
                                  minHeight: 14,
                                  maxHeight: 14,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            DropdownButton<String>(
                              autofocus: false,
                              isExpanded: true,
                              value: _selectedCity,
                              focusColor: kPrimaryColor,
                              iconEnabledColor: kPrimaryColor,
                              icon: Image(image: AssetImage(kDownArrowIcon)),
                              underline: Container(height: 1, color: kPrimaryColor),
                              onChanged: (selectedCity) => setState(() => _selectedCity = selectedCity),
                              items: _cityList
                                  .map(
                                    (_city) => DropdownMenuItem(
                                      value: _city,
                                      child: Container(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(_city, style: Theme.of(context).textTheme.bodyText2),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              kNumberOfChildren,
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 16, color: kPrimaryColor),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(
                                _noOfChildrenList.length,
                                (index) => Row(
                                  children: [
                                    Radio(
                                      activeColor: kPrimaryColor,
                                      value: _noOfChildrenList[index],
                                      groupValue: _selectedNoOfChildren,
                                      visualDensity: VisualDensity.compact,
                                      onChanged: (selectedNoOfChildren) => _onChangedNoOfChildren(index),
                                    ),
                                    Text(_noOfChildrenList[index], style: Theme.of(context).textTheme.bodyText2),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            DropdownButton<String>(
                              autofocus: false,
                              isExpanded: true,
                              value: _selectedRelation,
                              focusColor: kPrimaryColor,
                              iconEnabledColor: kPrimaryColor,
                              icon: Image(image: AssetImage(kDownArrowIcon)),
                              underline: Container(height: 1, color: kPrimaryColor),
                              onChanged: (selectedRelation) => setState(() => _selectedRelation = selectedRelation),
                              items: _relationWithChildList
                                  .map(
                                    (_city) => DropdownMenuItem(
                                      value: _city,
                                      child: Container(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(_city, style: Theme.of(context).textTheme.bodyText2),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(height: 30),
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(horizontal: 40),
                              child: RaisedButton(
                                onPressed: () => Navigator.pushNamed(context, homeRoute),
                                child: Text(
                                  kNext,
                                  style: Theme.of(context).textTheme.button.copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    kAlreadyHaveAccount,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(color: kTextColor, fontWeight: FontWeight.w100),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    kSignIn,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      FlatButton(
                        onPressed: () {},
                        child: Text(kSkip, style: Theme.of(context).textTheme.headline6.copyWith(color: kTextColor)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onChangedNoOfChildren(int index) {
    setState(() => _selectedNoOfChildren = _noOfChildrenList[index]);
  }
}
