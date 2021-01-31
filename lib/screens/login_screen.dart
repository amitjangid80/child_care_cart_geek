// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/routes/routes.dart';
import 'package:ui_sample/utils/constants.dart';
import 'package:ui_sample/widgets/material_card_with_pin.dart';

class LoginScreen extends StatelessWidget {
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
                      Text(kSignInToContinue, style: Theme.of(context).textTheme.headline5.copyWith(color: kTextColor)),
                      MaterialCardWithPin(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              autofocus: false,
                              autocorrect: false,
                              keyboardType: TextInputType.numberWithOptions(),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                              ],
                              decoration: InputDecoration(
                                isDense: true,
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
                            const SizedBox(height: 40),
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(horizontal: 40),
                              child: RaisedButton(
                                onPressed: () => Navigator.pushNamed(context, registerRoute),
                                child: Text(
                                  kVerify,
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
                                    kNoAccount,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(color: kTextColor, fontWeight: FontWeight.w100),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    kSignUp,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                kForgotPassword,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(fontSize: 12, color: kPrimaryColor, fontWeight: FontWeight.w100),
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
}
