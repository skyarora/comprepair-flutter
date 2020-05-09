import 'package:flutter/material.dart';
class Help extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Heplcomp();
  }
}

class Heplcomp extends State<Help> {
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(children: <Widget>[
        Container(
          child: Text(
            'Looking For Support?\nContact Us?',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25,),
          ),
          color: Colors.teal,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(15),
        ),
       Container(
         child:Text(
           'Welcome To Our\n Support Center',
               textAlign: TextAlign.center,
           style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 30),
         ),
         padding: EdgeInsets.all(15),
       margin: EdgeInsets.all(10),
       decoration: new BoxDecoration(


          ),
       ),
        Container(
          child: Text('Popular Article' ,
            style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(top: 20),
        ),
        Container(
          child: Text('How Do i Use This Site ?'),
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(top: 20),

        ),
        Container(
          child: Text('What Services are Provided by this Site ?',style:TextStyle(decoration: TextDecoration.underline),),
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(top: 20),
        ),
        Container(
          child: Text(' Who can Solve your Problem ?',style:TextStyle(decoration: TextDecoration.underline),),
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(top: 20),
        ),
        Container(
          child: Text(' What are the Payment Options ?',style:TextStyle(decoration: TextDecoration.underline),),
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(top: 20),
        ),
        Container(
          child: Text('How much do i get from this Site ?',style:TextStyle(decoration: TextDecoration.underline),),
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(top: 20),
        ),
        Container(
          child: Text('Most Helpful Article' ,
            style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(top: 20),
        ),
        Container(
          child: Text('Terms of Use \n\nPrivacy Policy\n\n Community Fourms\n\n Copyright and Legal-Theme\n\n',style:TextStyle(decoration: TextDecoration.underline),),
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(top: 20),
        ),
      ]
      ),
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'CompRepair',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Help(),
    );
  }
}
