import 'package:assessment1/asset/moreIcons.dart';
import 'package:assessment1/core/viewmodel/navigationViewModel.dart';
import 'package:assessment1/ui/common/colors.dart';
import 'package:assessment1/ui/common/style/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavIcons extends StatelessWidget {
  final int selectedItem;
  final NavigationViewModel model;
  CustomNavIcons(this.selectedItem, this.model);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            model.setSelectedNavBar(0);
          },
          child: Column(
            children: [
              Icon(MoreFlutterIcons.deals,
                  color: selectedItem == 0 ? colorActiveNavIcon : colorNavIcon),
              Text(
                'Deals',
                style: selectedItem == 0
                    ? activeNavItemsLabelTextStyle
                    : navItemsLabelTextStyle,
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            model.setSelectedNavBar(1);
          },
          child: Column(
            children: [
              Icon(MoreFlutterIcons.voucher__1_,
                  color: selectedItem == 1 ? colorActiveNavIcon : colorNavIcon),
              Text(
                'Vouchers',
                style: selectedItem == 1
                    ? activeNavItemsLabelTextStyle
                    : navItemsLabelTextStyle,
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            model.setSelectedNavBar(2);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(),
              Text(
                'F&B Deals',
                style: selectedItem == 2
                    ? activeNavItemsLabelTextStyle
                    : navItemsLabelTextStyle,
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            model.setSelectedNavBar(3);
          },
          child: Column(
            children: [
              Icon(MoreFlutterIcons.priceTracker,
                  color: selectedItem == 3 ? colorActiveNavIcon : colorNavIcon),
              Text(
                'Price Tracker',
                style: selectedItem == 3
                    ? activeNavItemsLabelTextStyle
                    : navItemsLabelTextStyle,
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            model.setSelectedNavBar(4);
          },
          child: Column(
            children: [
              Icon(Icons.person_outline_rounded,
                  color: selectedItem == 4 ? colorActiveNavIcon : colorNavIcon),
              Text(
                'Profile',
                style: selectedItem == 4
                    ? activeNavItemsLabelTextStyle
                    : navItemsLabelTextStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}
