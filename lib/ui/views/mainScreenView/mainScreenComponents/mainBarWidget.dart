import 'package:assessment1/asset/icons.dart';
import 'package:assessment1/ui/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainBarWidget extends StatelessWidget {
  final Function openDrawer;
  MainBarWidget(this.openDrawer);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // menu button
              IconButton(
                onPressed: () {
                  print('menu button');
                  openDrawer();
                },
                icon: Icon(
                  MyFlutterApp.menu,
                  size: 25,
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 9.0),
                    height: 40,
                    decoration: BoxDecoration(
                      color: searchBarColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: IconButton(
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        print('search icon');
                      },
                      icon: Icon(
                        Icons.search,
                        color: colorSearchIcon,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              // center-focus button
              IconButton(
                onPressed: () {
                  print('focus free button');
                },
                icon: Icon(
                  MyFlutterApp.center_focus_strong,
                  size: 30.0,
                ),
              ),
              // alarm & counter widget
              Stack(
                children: [
                  // alarm button
                  IconButton(
                    onPressed: () {
                      print('alarm button');
                    },
                    icon: Icon(
                      MyFlutterApp.bell,
                      size: 30.0,
                    ),
                  ),
                  // counter
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 27.0,
                        height: 23.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            )),
                        padding: EdgeInsets.all(4),
                        child: Text(
                          '1...',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      )),
                ],
              ),
            ],
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
