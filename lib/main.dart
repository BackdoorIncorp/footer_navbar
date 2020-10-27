import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {


  List<BottomNavigationBarItem> items;
  String value = "";
  int index = 0;


  @override
  void initState() {
    items = new List();
    items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people,),title: new Text("People")));
    items.add(new BottomNavigationBarItem(icon: new Icon(Icons.weekend,),title: new Text("Weekend")));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      
      bottomNavigationBar: new BottomNavigationBar(
          fixedColor: Colors.blueAccent,
          currentIndex: index,
          onTap: (int item ) {
            setState(() {
              index = item;
              value = "Current value is $item";
            });
          },
          elevation: 20,
          iconSize: 20,
          backgroundColor: Colors.tealAccent,

          items: items),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(value)
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}