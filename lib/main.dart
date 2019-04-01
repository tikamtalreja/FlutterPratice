import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp( 
      title: "my app",
      home: new HomePage(),
      theme: new ThemeData(
          primarySwatch: Colors.amber,
          brightness: Brightness.light
          
      ),
      
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "hello there";
void _changeText(){
  setState(() {
    if(mytext.startsWith("h")){
      mytext = "welcome to my app";
      
    }else{
      mytext = "hello there";
    }
  });
}

  Widget _bodyContainer(){
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(mytext,style: new TextStyle(color: Colors.blue,fontSize: 22.0) ,),
            
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("home page")),
      body: _bodyContainer(),
      floatingActionButton:  new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}