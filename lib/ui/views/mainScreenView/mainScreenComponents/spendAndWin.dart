import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpendAndWin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(' Spend an win ...');
      },
      child: Container(
        width: 110,
        height: 120,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Image.asset(
                  'assets/images/product2.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Spend & Win',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
