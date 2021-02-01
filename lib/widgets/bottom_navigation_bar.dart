// Created by AMIT JANGID on 31/01/21.

import 'package:flutter/material.dart';
import 'package:ui_sample/app_theme.dart';
import 'package:ui_sample/models/bottom_item.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [BoxShadow(color: kGreyColor, blurRadius: 10, spreadRadius: 0.5)]),
      child: BottomAppBar(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            bottomItemList.length,
            (index) {
              BottomItem _bottomItem = bottomItemList[index];

              Color _selectedColor = (_currentIndex == index) ? kPrimaryColor : kBlackishColor;
              Color _selectedIconColor = (_currentIndex == index) ? kPrimaryColor : Colors.white;

              return InkWell(
                onTap: () => _onTabChanged(index),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(width: 20, height: 20, color: _selectedColor, image: AssetImage(_bottomItem.icon)),
                      Text(
                        _bottomItem.title,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(color: _selectedColor),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(color: _selectedIconColor, borderRadius: BorderRadius.circular(100)),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _onTabChanged(selectedIndex) {
    setState(() => _currentIndex = selectedIndex);
  }
}
