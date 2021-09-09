import 'package:assessment1/ui/customWidgets/customNavIcons.dart';
import 'package:assessment1/ui/views/dealsScreenView/dealsScreen.dart';
import 'package:assessment1/ui/views/mainScreenView/mainScreen.dart';
import 'package:assessment1/ui/views/priceTrackerScreenView/priceTrackerScreen.dart';
import 'package:assessment1/ui/views/profileScreenView/profileScreen.dart';
import 'package:assessment1/ui/views/voucherScreenView/voucherScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'core/viewmodel/navigationViewModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List<Widget> screens = [
    DealsScreen(),
    VoucherScreen(),
    MainScreen(),
    PriceTrackerScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ViewModelBuilder<NavigationViewModel>.reactive(
          builder: (context, model, child) => Scaffold(
                  body: Stack(
                children: [
                  IndexedStack(
                    children: screens,
                    index: model.selectedNavBar,
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(top: 8),
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(19),
                                      topRight: Radius.circular(19))),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: CustomNavIcons(
                                  model.selectedNavBar,
                                  model,
                                ),
                              ),
                            ),
                            Center(
                              heightFactor: 0.02,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4.0,
                                    )),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    'assets/images/paneCake1.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              )),
          viewModelBuilder: () => NavigationViewModel()),
    );
  }
}
