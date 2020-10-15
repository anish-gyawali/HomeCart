import 'package:flutter/material.dart';
import 'package:home_cart/components/cards.dart';
import 'package:home_cart/style/styles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Styles.height,
          width: Styles.width,
          decoration: Styles.boxdeco,
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: BasicCard(
                    color: Colors.white,
                    elevation: 25,
                    child: Text('Hello', ),
                  ),
                ),
              ],
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
        onPressed: (){},),
        
      ),
    );
  }
}
