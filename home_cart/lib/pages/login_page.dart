import 'package:flutter/material.dart';
import 'package:home_cart/style/styles.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Styles.height,
          width: Styles.width,
          decoration: Styles.boxdeco,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    "Login",
                    style: Styles.pageHeading
                  ),
                SizedBox(height: 50.0),
              Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    filled: true,
                  ),
                ),
              ),

              SizedBox(height: 50.0),
              Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                  ),
                  obscureText: true,
                ),
              ),

              RaisedButton(
                    onPressed: () {Navigator.pushNamed(context, '/navigation');},
                    child: Text('Login'),
                  )
              ]
            ),
          ),
        ),
      ),
    );
  }
}
