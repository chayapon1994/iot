import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    double amount = 150.0;
    double size = 250.0;

    Widget emailTextFormFeild() {
      return Container(
        width: size,
        alignment: Alignment.center,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Your@mail.com',
            labelStyle: TextStyle(color: Colors.pink[500]),
          ),
        ),
      );
    }

    Widget passwordTextFormFeild() {
      return Container(
        width: size,
        alignment: Alignment.center,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'More than 7 charactor',
            labelStyle: TextStyle(color: Colors.blue[500]),
          ),
        ),
      );
    }

    Widget siginButton(BuildContext context) {
      return Expanded(
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Colors.green[500],
          child: Text(
            'Sign in',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      );
    }

    Widget showName() {
      return Container(
        child: Text(
          'IoT Apps',
          style: TextStyle(
              fontSize: 30.0,
              color: Colors.purple[500],
              fontWeight: FontWeight.bold),
        ),
      );
    }

    return Scaffold(
      body: Container(
        alignment: Alignment(0, 0),
        padding: EdgeInsets.only(top: 70.0),
        child: Column(
          children: <Widget>[
            showName(),
            emailTextFormFeild(),
            passwordTextFormFeild(),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              alignment: Alignment.center,
              width: size,
              child: Row(
                children: <Widget>[siginButton(context)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
