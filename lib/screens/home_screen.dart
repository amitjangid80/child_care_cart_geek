// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/utils/constants.dart';
import 'package:ui_sample/widgets/all_packges.dart';
import 'package:ui_sample/widgets/bottom_navigation_bar.dart';
import 'package:ui_sample/widgets/drawer_data.dart';
import 'package:ui_sample/widgets/nanny_booking_service.dart';
import 'package:ui_sample/widgets/user_profile.dart';
import 'package:ui_sample/widgets/your_current_booking.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  _toggleAnimation() {
    _animationController.isDismissed ? _animationController.forward() : _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.6;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double _slide = rightSlide * _animationController.value;
        double _scale = 1 - (_animationController.value * 0.3);

        return Stack(
          children: [
            Scaffold(body: DrawerData(), backgroundColor: Colors.white),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..translate(_slide)
                ..scale(_scale),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: kGreyColor, blurRadius: 10, spreadRadius: 0.5)],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Scaffold(
                    bottomNavigationBar: BottomNavigationWidget(),
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(72),
                      child: Container(
                        padding: EdgeInsets.only(top: 36, left: 12, right: 12, bottom: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () => _toggleAnimation(),
                              icon: Image(image: AssetImage(kHamBurgerIcon)),
                              // icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _animationController),
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UserProfile(),
                          NannyAndBabySittingService(),
                          YourCurrentBooking(),
                          AllPackages(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }
}
