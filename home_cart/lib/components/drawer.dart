import 'package:flutter/material.dart';
import 'package:home_cart/components/listtile.dart';
import 'package:home_cart/style/styles.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Anish Gyawali'),
              accountEmail: Text('anish.gyawali@selu.edu'),
              currentAccountPicture: Image.asset('assets/anish.png'),
              decoration: Styles.boxdeco,
              ),
              Tiles(title:Text('Anish')),
              Tiles(title:Text('Hero')),
              Tiles(title:Text('Ho')),
        ],
      ),
    );
  }
}
