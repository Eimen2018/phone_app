import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{

  Button({@required this.onPressed});

  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {

    return RawMaterialButton(
      fillColor: Colors.deepPurple,
      splashColor: Colors.purple,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical:8.0,
          horizontal:20.0,
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const<Widget>[

            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text("Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      letterSpacing: 5.0,
                      fontWeight: FontWeight.bold)
              ),
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.amber,
              size: 50.0,

            ),
          ],
        ),


      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}