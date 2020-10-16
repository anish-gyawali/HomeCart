import 'package:flutter/material.dart';
import 'package:home_cart/components/cards.dart';
import 'package:home_cart/components/listtile.dart';
import 'package:home_cart/style/styles.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Styles.height,
          width: Styles.width,
          decoration: Styles.boxdeco,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.purple,
                    backgroundImage: AssetImage('assets/anish.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Anish Gyawali',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BasicCard(
                      color: Colors.white,
                      child: Tiles(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.teal[900],
                        ),
                        title: Text(
                          '+1 345-777-777',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}
