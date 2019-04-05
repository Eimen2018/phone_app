import 'package:flutter/material.dart';
import 'Button.dart';
import 'RecentCard.dart';
void main(){
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp>{
  void press(){
    print('pressed');
  }
  List<int> _number = new List();

  @override
  void initState() {
    setState(() {
      for(int i=0;i<10;i++){
        _number.add(i);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
            child: new Text('Phone',style:TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontFamily: 'Arial',
            ),
            )
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[

        ],
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: new Icon(Icons.dialpad),
          onPressed: (){press();}
      ),
      body: new ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context,int i){
            return new RecentCard();
          }
      ),
    );

  }
}