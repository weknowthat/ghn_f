import 'package:flutter/material.dart';

class StepItem extends StatefulWidget {

  String title;
  WidgetBuilder builder;
  bool end;

  StepItem({this.title, this.builder, this.end = false});

  @override
  _StepItemState createState() => _StepItemState();
}

class _StepItemState extends State<StepItem> {

  static const double _STEP_SIZE = 15.0;
  static const double _PROGRESS_SIZE = 2.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0),
      height: 100.0,
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: _STEP_SIZE,
                  height: _STEP_SIZE,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                ),
                //TITLE
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    width: 100.0,
                    height: _STEP_SIZE,
                    decoration: BoxDecoration(
                        color: Colors.grey[300]
                    ),
                      child: Text(widget.title),
                  ),
                ),
              ],
            ),
          ),
          widget.end
          ? Container()
          : Expanded(
            child: Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: (_STEP_SIZE - _PROGRESS_SIZE)/2),
                    child: Container(
                      width: _PROGRESS_SIZE,
                      decoration: BoxDecoration(
                          color: Colors.grey[400]
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                          child: widget.builder(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
