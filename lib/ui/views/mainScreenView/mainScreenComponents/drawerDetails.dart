import 'package:assessment1/asset/moreIcons.dart';
import 'package:assessment1/ui/common/colors.dart';
import 'package:assessment1/ui/common/style/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDetails extends StatelessWidget {
  const DrawerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: colorProfileBG,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(14.0)),
                  margin: EdgeInsets.only(right: 10.0),
                  width: size.width * 0.21,
                  height: size.width * 0.21,
                  child: Center(
                    child: Text(
                      'M',
                      style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mahadir',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'),
                    ),
                    Text(
                      'mahadir021@gmail.com',
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey.shade500,
                          fontFamily: 'Lato'),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              MoreFlutterIcons.inbox,
            ),
            title: Text(
              'Inbox',
              style: drawerItemsLabelTextStyle,
            ),
          ),
          ListTile(
            leading: Icon(
              MoreFlutterIcons.voucher__1_,
            ),
            title: Text(
              'My Vouchers',
              style: drawerItemsLabelTextStyle,
            ),
          ),
          ListTile(
            leading: Icon(
              MoreFlutterIcons.purchaseHistory,
            ),
            title: Text(
              'Purchase History',
              style: drawerItemsLabelTextStyle,
            ),
          ),
          ListTile(
            leading: Icon(
              MoreFlutterIcons.retailers,
            ),
            title: Text(
              'My Retailers',
              style: drawerItemsLabelTextStyle,
            ),
          ),
          ListTile(
            leading: Icon(
              MoreFlutterIcons.foursquare,
            ),
            title: Text(
              'Explore Categories',
              style: drawerItemsLabelTextStyle,
            ),
          ),
          ListTile(
            leading: Icon(
              MoreFlutterIcons.brochure,
            ),
            title: Text(
              'Brochures',
              style: drawerItemsLabelTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
