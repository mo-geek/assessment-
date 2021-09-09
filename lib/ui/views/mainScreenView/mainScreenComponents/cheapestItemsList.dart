import 'package:assessment1/core/viewmodel/mainScreenViewModel.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imageWithBackground.dart';
import 'moreButton.dart';

class CheapestItemsList extends StatelessWidget {
  final MainScreenViewBuilder model;
  CheapestItemsList(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.0),
      child: Container(
        padding: EdgeInsets.only(left: 11, top: 14.0, right: 4.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cheapest Daily Essentials on Lazada!',
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.37,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 0.47,
                ),
                itemBuilder: (context, index) => Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.17,
                  padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                  child: Column(
                    children: [
                      ImageWithBackground(model, index),
                      SizedBox(
                        height: 3.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.16,
                        child: AutoSizeText(
                          '${model.cheapestDailyItems[index].productName}',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: AutoSizeText(
                          'RM${model.cheapestDailyItems[index].productPrice.toStringAsFixed(2)}',
                          softWrap: true,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
