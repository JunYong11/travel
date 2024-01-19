import 'package:flutter/material.dart';
import 'package:travel_app/login/check.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController ID = TextEditingController();
  TextEditingController PW = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "travel",
          style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 200,
              ),
              TextField(
                controller: ID,
                decoration:
                    InputDecoration(labelText: 'ID', hintText: 'Enter email'),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: PW,
                decoration: InputDecoration(
                    labelText: 'Password', hintText: 'Enter password'),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 40,
              ),
              ButtonTheme(
                child: ElevatedButton(
                  onPressed: () {
                    check_ID_PW(ID.text, PW.text);
                  },
                  child: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.white,
                    size: 35.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent),
                ),
              )
            ]),
          )),
    ));
  }
}
