import 'package:assessment1/core/viewmodel/mainScreenViewModel.dart';
import 'package:assessment1/ui/common/colors.dart';
import 'package:assessment1/ui/views/mainScreenView/mainScreenComponents/mainBarWidget.dart';
import 'package:assessment1/ui/views/mainScreenView/mainScreenComponents/mainCategoriesListWidget.dart';
import 'package:assessment1/ui/views/mainScreenView/mainScreenComponents/moonCakesItems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'mainScreenComponents/cheapestItemsList.dart';
import 'mainScreenComponents/drawerDetails.dart';
import 'mainScreenComponents/econsave.dart';
import 'mainScreenComponents/moreButton.dart';
import 'mainScreenComponents/spendAndWin.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _scaffoldKey = GlobalKey<ScaffoldState>();
    return ViewModelBuilder<MainScreenViewBuilder>.nonReactive(
        builder: (context, model, child) => MaterialApp(
              color: Colors.white,
              home: Scaffold(
                key: _scaffoldKey,
                drawer: DrawerDetails(),
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Main Bar
                        MainBarWidget(() {
                          _scaffoldKey.currentState?.openDrawer();
                        }),
                        // 1st List Tile
                        MainCategoriesListWidget(model),
                        // // 2nd & 3rd & 4th List Tile
                        Stack(
                          children: [
                            Container(
                              width: _size.width,
                              color: colorBackground,
                              padding: EdgeInsets.symmetric(horizontal: 9.0),
                              child: Column(
                                children: [
                                  // 2nd List Tile
                                  CheapestItemsList(model),
                                  // 3rd List Tile
                                  MoonCakesItemsList(model),
                                  // 4th List Tile,
                                  EconSave(model),
                                ],
                              ),
                            ),
                            Positioned(
                              child: MoreButton(),
                              top: _size.height * 0.31,
                              right: 0,
                            ),
                            Positioned(
                              child: SpendAndWin(),
                              top: _size.height * 0.93,
                              right: 0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => MainScreenViewBuilder());
  }
}
