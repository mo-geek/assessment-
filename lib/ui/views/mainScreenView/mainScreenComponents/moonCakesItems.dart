import 'package:assessment1/asset/icons.dart';
import 'package:assessment1/core/viewmodel/mainScreenViewModel.dart';
import 'package:assessment1/ui/common/colors.dart';
import 'package:assessment1/ui/customWidgets/moonCakeCustomDraw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoonCakesItemsList extends StatelessWidget {
  final MainScreenViewBuilder model;
  MoonCakesItemsList(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7.0),
      child: Container(
        padding: EdgeInsets.only(left: 11, top: 14.0, right: 4.0, bottom: 7.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MoonCakes As low As RM1.98!',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                InkWell(
                  child: Text(
                    'SHOW MORE',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        fontSize: 13.0),
                  ),
                  onTap: () {
                    print('show more !!!');
                  },
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              padding: EdgeInsets.only(bottom: 7.0),
              child: ListView.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    print(
                      'MoonCake: ${model.moonCakesList[index].name}',
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.37,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: colorBackground, width: 1),
                    ),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // MoonCake Image
                        Image.asset(
                          model.moonCakesList[index].image,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        // MoonCake Name
                        SizedBox(
                          height: 40.0,
                          child: Text(
                            model.moonCakesList[index].name,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'Lato',
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // MoonCake Max Price
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                'RM${model.moonCakesList[index].packageMaxPrice.toStringAsFixed(2)}',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Lato',
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                            // MoonCakeCustomDraw
                            ,
                            Stack(
                              children: [
                                Container(
                                  width: 200,
                                  height: 80,
                                  child: CustomPaint(
                                    painter: MoonCakeCustomDraw(),
                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  top: 25,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 95.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14),
                                            )),
                                        padding: EdgeInsets.all(4),
                                        child: Center(
                                          child: Text(
                                            'RM${model.moonCakesList[index].packageMinPrice.toStringAsFixed(2)}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w900),
                                            textAlign: TextAlign.center,
                                            softWrap: true,
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Container(
                                        decoration:
                                            BoxDecoration(color: Colors.red),
                                      )),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                shrinkWrap: true,
                itemCount: model.moonCakesList.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  MyFlutterApp.waring,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Tap on the product to buy now!',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
