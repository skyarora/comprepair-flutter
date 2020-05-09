import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormScreenState();
  }
}
class FormScreenState extends State<FormScreen> {
  String _name;
  String _email;
  String _phone;
  String _subject;
  String _message;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Widget _buildName() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Name'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is Required';
          }
        },
        onSaved: (String value) {
          _name = value;
        });
  }

  Widget _buildEmail() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Email'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Email is Required';
          }
        },
        onSaved: (String value) {
          _email = value;
        });
  }

  Widget _buildPhone() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Phone'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Phone is Required';
          }
        },
        onSaved: (String value) {
          _phone = value;
        });
  }

  Widget _buildSubject() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Subject'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Some Subject is Required';
          }
        },
        onSaved: (String value) {
          _subject = value;
        });
  }

  Widget _buildMessage() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Query/Message'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Message is Required';
          }
        },
        onSaved: (String value) {
          _message = value;
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Query'),
        backgroundColor: Colors.teal,
      ),

      body:ListView(
        children:<Widget>[
          Container(
            child: Text('If you have any Query\n about any Computer \nrelated Problem , \nLet us know immedieatly.',textAlign:TextAlign.center,style: TextStyle(fontSize: 25,color: Colors.white,fontWeight:FontWeight.bold),),
            color: Colors.teal,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(15),
          ),
      Container(
        child: Text('Welcome to the Support Center',style:TextStyle (fontSize: 25,color: Colors.teal,fontWeight: FontWeight.bold)),
        margin: EdgeInsets.only(top: 24,left: 24),

      ),
      Container(
        margin: EdgeInsets.all(24),
        child: Form(

          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildName(),
              _buildEmail(),
              _buildPhone(),
              _buildSubject(),
              _buildMessage(),
              SizedBox(height: 100),
              RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),
                  ),
                  onPressed: () =>{
                    if(!_formkey.currentState.validate()){

                    },

                    _formkey.currentState.save(),
                    print(_name),
                    print(_email),
                    print(_phone),
                    print(_subject),
                    print(_message),
                  }
              )
            ],
          ),
        ),
      ),
          Container(

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
      home: FormScreen(),
    );
  }
}
