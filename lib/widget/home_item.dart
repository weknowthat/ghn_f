import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {

  HomeItem({
    this.title = "None",
    this.icon = Icons.not_interested,
    @required this.type
  });

  String title;
  IconData icon;
  HomeItemType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          this.icon,
                          size: 50.0,
                          color: Colors.green,
                        ),
                        Text(
                          this.title.toUpperCase().trim(),
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  this.type == HomeItemType.odd
                  ? Container(
                    width: 1.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.white,
                          Colors.green,
                          Colors.white
                        ]
                      )
                    ),
                  )
                  : Container(),
                ],
              ),
            ),
          ),
          this.type == HomeItemType.odd
          ? Container(
            height: 1.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.green,
                  Colors.white
                ]
              )
            ),
          )
          : Container(
            height: 1.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.green,
                  Colors.white,
                  Colors.white
                ]
              )
            ),
          ),
        ]
      ),
    );
  }
}

enum HomeItemType{
  odd,
  even
}