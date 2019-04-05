import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RecentCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Row(

        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Padding(padding: EdgeInsets.all(30.0)),
          new Text('Card'),
        ],
      ),

    );
  }
}