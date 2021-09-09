import 'package:assessment1/core/viewmodel/mainScreenViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWithBackground extends StatelessWidget {
  final MainScreenViewBuilder model;
  final int index;
  ImageWithBackground(this.model, this.index);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.16,
        height: MediaQuery.of(context).size.width * 0.16,
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          model.cheapestDailyItems[index].productImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
