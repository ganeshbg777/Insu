import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:insu/user/User.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const InsuMain());
}

class InsuMain extends StatelessWidget {
  const InsuMain({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const InsuHomePage(
      title: "Insu",
    ));
  }
}

class InsuHomePage extends StatefulWidget {
  const InsuHomePage({super.key, required this.title});

  final String title;
  @override
  State<InsuHomePage> createState() => _InsuHomePageState();
}

class _InsuHomePageState extends State<InsuHomePage> {
  final TextEditingController _firstnamecontroller = TextEditingController();
  final TextEditingController _middlenamecontroller = TextEditingController();
  final TextEditingController _lastnamecontroller = TextEditingController();
  final TextEditingController _phonenumbercontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _companycontroller = TextEditingController();

  postData() async {
    User user = new User(
        _firstnamecontroller.text,
        _lastnamecontroller.text,
        _middlenamecontroller.text,
        _phonenumbercontroller.text,
        _emailcontroller.text,
        _companycontroller.text);

    var response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        body: user.toJson());
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      controller: _firstnamecontroller,
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Middle Name"),
                      controller: _middlenamecontroller,
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Last Name"),
                      controller: _lastnamecontroller,
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: "Phone number"),
                      controller: _phonenumbercontroller,
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(hintText: "Work Email"),
                      controller: _emailcontroller,
                    ),
                  ),
                  Container(
                    width: 280,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Company"),
                      controller: _companycontroller,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              //onPressed: _incrementCounter,
              onPressed: postData,
              child: const Icon(Icons.navigate_next),
            )));
  }
}
