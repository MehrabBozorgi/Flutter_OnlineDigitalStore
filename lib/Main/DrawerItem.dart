import 'package:flutter/material.dart';

import '../Const.dart';


class DrawerItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,

                child: Image(
                    image: AssetImage('ui.jpg'), fit: BoxFit.cover),
              ),
            ],
          ),
          Divider(
            color: Colors.white,
            endIndent: 10,
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.login,
                  color: Colors.red[800],
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'ورود از حساب کاربری',
                  style: kDrawerText,
                ),
              ],
            ),
            onTap: () {},
          ),

          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.red[800],
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'خروج از حساب کاربری',
                  style: kDrawerText,
                ),
              ],
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.white,
            endIndent: 10,
          ),
        ],
      ),
    );
  }
}