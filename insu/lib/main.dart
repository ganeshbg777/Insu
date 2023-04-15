import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("Insu"),
      backgroundColor: Colors.deepPurple,
    ),
    backgroundColor: Colors.white70,
    body: Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(hintText: "First Name"),
            ),
          ),
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Middle Name"),
            ),
          ),
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Last Name"),
            ),
          ),
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Phone number"),
            ),
          ),
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "Work Email"),
            ),
          ),
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(hintText: "Company"),
            ),
          ),
        ],
      ),
    ),
  )));
}
