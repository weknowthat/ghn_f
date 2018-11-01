import 'package:flutter/material.dart';
import 'package:ghn_f/routes.dart';
import 'package:ghn_f/widget/home_item.dart';

class HomeScreen extends StatelessWidget {

  final List<Widget> _menuItems = <Widget>[
    HomeItem(
      title: "NUMBER 1",
      icon: Icons.looks_one,
      type: HomeItemType.odd,
    ),
    HomeItem(
      title: "NUMBER 2",
      icon: Icons.looks_two,
      type: HomeItemType.even,
    ),
    HomeItem(
      title: "NUMBER 3",
      icon: Icons.looks_3,
      type: HomeItemType.odd,
    ),
    HomeItem(
      title: "NUMBER 4",
      icon: Icons.looks_4,
      type: HomeItemType.even,
    ),
    HomeItem(
      title: "NUMBER 5",
      icon: Icons.looks_5,
      type: HomeItemType.odd,
    ),
    HomeItem(
      title: "NUMBER 6",
      icon: Icons.looks_6,
      type: HomeItemType.even,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.green),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            color: Colors.green,
            onPressed: (){
              //todo: do sth
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            color: Colors.green,
            onPressed: (){
              //todo: do sth
              Navigator.pushReplacementNamed(context, AppRoutes.login);
            },
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: _menuItems,
      ),
    );
  }
}
