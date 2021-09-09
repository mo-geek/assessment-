import 'package:assessment1/core/viewmodel/mainScreenViewModel.dart';
import 'package:assessment1/ui/common/style/textStroke.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EconSave extends StatelessWidget {
  EconSave(this.model);
  MainScreenViewBuilder model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Lazada.png'), fit: BoxFit.fill)),
      margin: EdgeInsets.symmetric(vertical: 7.0),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 15.0,
          bottom: 0.8,
        ),
        child: Column(
          children: [
            // Title & show more button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Deals Top selling items!',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      shadows: outlinedText(
                          strokeColor: Colors.amber, strokeWidth: 1.0)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Text(
                        'SHOW MORE',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato',
                            fontSize: 13.0,
                            shadows: outlinedText(
                                strokeColor: Colors.amber, strokeWidth: 1.0)),
                      ),
                      onTap: () {
                        print('show more !!!');
                      },
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            // ListTile
            Container(
              padding: EdgeInsets.only(bottom: 7.0),
              height: MediaQuery.of(context).size.height * 0.35,
              child: Text(
                'Daily EXCLUSIVE',
                style: TextStyle(
                  wordSpacing: 3,
                  letterSpacing: 6,
                  color: Colors.black38,
                  fontSize: 25,
                  fontFamily: 'Lato',
                  shadows:
                      outlinedText(strokeWidth: 4, strokeColor: Colors.amber),
                ),
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
          ],
        ),
      ),
    );
  }
}
