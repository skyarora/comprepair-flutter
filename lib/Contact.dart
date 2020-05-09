import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*import 'package:comprepair/calls_and_messages_service.dart';*/
/*import 'package:url_launcher/url_launcher.dart';*/
/*void setupLocator(){
  locator.registerSingleton(CallsAndMessagesService());
}*/
void main() {
  /*setupLocator();*/
  runApp(MyApp());
}

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Contactus();
  }
}

class Contactus extends State<Contact> {
/*
final CallsAndMessagesService _service= locator<CallsAndMessagesService>();
final String number="7828088183";
*/
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(children: <Widget>[
          /*ListView(children: <Widget>[*/
          Container(
            child: Text(
              'Our Expert Team',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(15),
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/p1.jpg'),
          ),
          /*Container(
          margin: EdgeInsets.only(top: 15.0),
          constraints: BoxConstraints.expand(height: 200.0, width: 75.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('assets/images/p1.jpg'),
            ),
          ),
        ),*/
          Container(
            child: Text(
              '+919780547442',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.all(15.0),
          ),
          /*RaisedButton(
          child: Text("call $number",),
          onPressed: () => _service.call(number),
        ),*/
          /* Container(
           child: new FlatButton.icon(onPressed: launch(), icon: null, label: null),
         ),*/
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/p2.jpg'),
          ),
          /*Container(
          margin: EdgeInsets.only(top: 15.0),
          constraints: BoxConstraints.expand(height: 200.0, width: 75.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('assets/images/p2.jpg'),
            ),
          ),
        ),*/
          Container(
            child: Text(
              '+919780547442',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.all(15.0),
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/p3.jpg'),
          ),
          /*Container(
          margin: EdgeInsets.only(top: 15.0),
          constraints: BoxConstraints.expand(height: 200.0, width: 75.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('assets/images/p3.jpg'),
            ),
          ),
        ),*/
          Container(
            child: Text(
              '+919780547442',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.all(15.0),
          ),
        ]),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'CompRepair',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Contact(),
    );
  }
}
