import 'package:assessment1/core/viewmodel/mainScreenViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPriceBoard extends StatelessWidget {
  final MainScreenViewBuilder model;
  final int index;
  CustomPriceBoard(this.model, this.index);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: 27,
        width: 40,
        child: Text(
          'RM${model.moonCakesList[index].packageMinPrice}',
          style: TextStyle(
              fontSize: 17,
              height: 25,
              color: Colors.white,
              fontFamily: 'Anton'),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      bottom: 26,
      right: 90,
    );
  }
}
