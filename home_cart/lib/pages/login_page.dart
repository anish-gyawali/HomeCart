import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80),
            Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              ],
            ),
            SizedBox(height: 50.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                filled: true,
              ),
            ),
            SizedBox(height: 50.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text('Login'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
