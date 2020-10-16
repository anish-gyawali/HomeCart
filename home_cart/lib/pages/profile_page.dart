import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.purple,
                //backgroundImage: AssetImage(''),
              ),
              Text(
                'Avinash Joshi',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      '+1 345-777-777',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
