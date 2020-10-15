import 'package:flutter/material.dart';
import 'package:home_cart/components/cards.dart';
import 'package:home_cart/components/listtile.dart';
import 'package:home_cart/style/styles.dart';

class Home extends StatefulWidget {
  final String listTitle;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Function onPress;

  Home({this.leadingIcon, this.listTitle, this.onPress, this.trailingIcon});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Home> shoppingTitle = [
    Home(
      leadingIcon: Icons.cake_rounded,
      listTitle: 'Anish\'s Birthday',
      onPress: () {},
    ),
    Home(
      leadingIcon: Icons.train_sharp,
      listTitle: 'Colorado Trip',
      onPress: () {},
    ),
    Home(
      leadingIcon: Icons.fastfood,
      listTitle: 'Picnic',
      onPress: () {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Styles.height,
          width: Styles.width,
          decoration: Styles.boxdeco,
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              SizedBox(
                  width: width,
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Shopping List..',
                        style: Styles.pageHeading,
                        textAlign: TextAlign.center,
                      )),
                  height: 198),


              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Column(
                  children: shoppingTitle.map((titles) {

                    return BasicCard(
                      elevation: 20,
                      color: Colors.red[100],
                      child: Tiles(
                        leading: Icon(titles.leadingIcon),
                        title: Text(
                          titles.listTitle,
                          style: Styles.cardHeading,
                        ),
                        trailing: IconButton(
                            icon: Icon(Icons.delete_forever),
                            onPressed: titles.onPress),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    );
                  }).toList(),

                ),),
            ]),
          ),
        ),

        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.add),
          label: Text('Add New'),
          onPressed: () {},
        ),
      ),
    );
  }
}
