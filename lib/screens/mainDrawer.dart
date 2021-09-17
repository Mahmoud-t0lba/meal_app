import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            // ignore: deprecated_member_use
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up !',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'Meal',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'Filters',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
