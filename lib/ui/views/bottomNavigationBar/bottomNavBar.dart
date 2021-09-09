import 'package:assessment1/asset/moreIcons.dart';
import 'package:assessment1/core/viewmodel/navigationViewModel.dart';
import 'package:flutter/material.dart';

class BNB extends StatelessWidget {
  final NavigationViewModel model;
  BNB(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              MoreFlutterIcons.deals,
              color: Colors.grey.shade400,
            ),
            activeIcon:
                Icon(MoreFlutterIcons.deals, color: Colors.blue.shade700),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MoreFlutterIcons.voucher__1_,
              color: Colors.grey.shade400,
            ),
            activeIcon:
                Icon(MoreFlutterIcons.voucher__1_, color: Colors.blue.shade700),
            label: 'Vouchers',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fastfood_rounded,
              color: Colors.grey.shade400,
            ),
            activeIcon:
                Icon(Icons.fastfood_rounded, color: Colors.blue.shade700),
            label: 'F&B Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MoreFlutterIcons.priceTracker,
              color: Colors.grey.shade400,
            ),
            activeIcon: Icon(MoreFlutterIcons.priceTracker,
                color: Colors.blue.shade700),
            label: 'Price Tracker',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.grey.shade400,
            ),
            activeIcon:
                Icon(Icons.person_outline_rounded, color: Colors.blue.shade700),
            label: 'Vouchers',
          ),
        ],
        currentIndex: model.selectedNavBar,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue.shade700,
        unselectedItemColor: Colors.grey.shade400,
        onTap: (index) {
          model.setSelectedNavBar(index);
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
