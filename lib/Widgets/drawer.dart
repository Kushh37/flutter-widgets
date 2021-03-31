import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Heet Patel",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("heet149@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white24,
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.multiply),
            title: "WillPopScope".text.xl2.amber800.make(),
          )
        ],
      ),
    );
  }
}
