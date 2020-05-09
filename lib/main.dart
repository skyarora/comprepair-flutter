import 'package:comprepair/Contact.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'query.dart';
import 'help.dart';
void main() => runApp(MaterialApp(
  home: new HomePage(),
));

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownStr;

  get dropdownValue => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/ci1.jpg'),
          AssetImage('assets/images/ci4.jpg'),
          AssetImage('assets/images/ci6.jpg'),
          AssetImage('assets/images/ch.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
        dotColor: Colors.red,
      ),
    );
    return new Scaffold(
      appBar: AppBar(
        title: Text('CompRepair'),
        backgroundColor: Colors.blueGrey,
      ),
      endDrawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('Query'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => FormScreen()));
              },
              trailing: new Icon(Icons.query_builder),
            ),
            new ListTile(
              title: new Text('Help'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Help()));
              },
              trailing: new Icon(Icons.help),
            ),
            new ListTile(
              title: new Text('Contact Us'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Contact()));
              },
              trailing: new Icon(Icons.contact_phone),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          new Container(
            child: Text(
              'A Company You Can beleive in. A company you can trust.',
              textAlign: TextAlign.center,
              style: (TextStyle(color: Colors.white)),
            ),
            color: Colors.teal,
            padding: EdgeInsets.all(50.0),
            margin: EdgeInsets.all(10.0),
          ),
          new Container(
            child: Text(
              'Get Solutions of all  Software Problems.',
              textAlign: TextAlign.center,
              style: (TextStyle(color: Colors.white)),
            ),
            color: Colors.teal,
            padding: EdgeInsets.all(50.0),
            margin: EdgeInsets.all(10.0),
          ),
          new Container(
            child: Text(
              'Get Solutions of all Hardware Problems.',
              textAlign: TextAlign.center,
              style: (TextStyle(color: Colors.white)),
            ),
            color: Colors.teal,
            padding: EdgeInsets.all(50.0),
            margin: EdgeInsets.all(10.0),
          ),
          new Container(
            child: Text(
              'Just One Call. One Visit.We Will Fix it all.',
              textAlign: TextAlign.center,
              style: (TextStyle(color: Colors.white)),
            ),
            color: Colors.teal,
            padding: EdgeInsets.all(50.0),
            margin: EdgeInsets.all(10.0),
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: DropdownButton<String>(
                value: dropdownStr,
                style: new TextStyle(
                  color: Colors.black,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownStr = null;
                  });
                },
                items: <String>[
                  'Install windows',
                  'Install Linux',
                  'Dual Boot Operaring System',
                  'Install Software',
                  'Data Recovery',
                  'Anti-Virus',
                  'Memory Issue',
                  'Driver Issue',
                  'Security',
                  'And Much More'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList()),
          ),
          new Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: DropdownButton<String>(
                value: dropdownStr,
                style: new TextStyle(
                  color: Colors.deepPurple,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownStr = null;
                  });
                },
                items: <String>[
                  'Assemble Computer',
                  'Keyboard',
                  'Mouse',
                  'CPU Fan Problem ',
                  'Parts Repair',
                  'Parts Replacement',
                  'Overheating',
                  'Motherboard Problem',
                  'Blue Screen Of Death',
                  'And Much More...'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList()),
          ),
          new Container(
            child: Text(
              'Onsite Computer Repair center\n We Repair Your Computer On Your Site ',
              textAlign: TextAlign.center,
              style: (TextStyle(color: Colors.white)),
            ),
            color: Colors.teal,
            padding: EdgeInsets.all(50.0),
            margin: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}