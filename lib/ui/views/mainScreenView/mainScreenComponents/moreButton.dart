import 'dart:collection';

import 'package:assessment1/ui/common/colors.dart';
import 'package:assessment1/ui/common/style/textStroke.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Outlines a text using shadows.

class MoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(' Show ALL ...');
      },
      child: Stack(
        children: [
          Container(
            height: 135,
            width: 60,
            color: colorShowAllButton,
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'ALL',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Anton',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Image.asset(
                  'assets/images/product2.png',
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 9,
                ),
              ],
            ),
          ),
          Positioned(
            child: Text(
              'RM5.90',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: outlinedText(
                    strokeColor: Colors.blue.shade900, strokeWidth: 3),
                decorationThickness: 5.0,
              ),
            ),
            bottom: -2,
          ),
        ],
      ),
    );
  }
}
