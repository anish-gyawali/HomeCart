import 'package:flutter/material.dart';
import 'package:home_cart/components/cards.dart';
import 'package:home_cart/components/chklist.dart';
import 'package:home_cart/style/styles.dart';

class DailyList extends StatefulWidget {
  String listTitle;
  bool values;

  DailyList({this.listTitle, this.values});

  @override
  _DailyListState createState() => _DailyListState();
}

class _DailyListState extends State<DailyList> {
  List<DailyList> dailyList = [
    DailyList(listTitle: 'Chicken', values: false),
    DailyList(listTitle: 'Steak', values: false),
    DailyList(listTitle: 'Rice', values: false),
    DailyList(listTitle: 'Onions', values: false),
    DailyList(listTitle: 'Tomatoes', values: false),
    DailyList(listTitle: 'Jalapenos', values: false),
    DailyList(listTitle: 'Beans', values: false),
    DailyList(listTitle: 'Garlic', values: false),
    DailyList(listTitle: 'Candys', values: false),
    DailyList(listTitle: 'Salmon', values: false),
    DailyList(listTitle: 'Laundry Detergent', values: false),
    DailyList(listTitle: 'Milk', values: false),
    DailyList(listTitle: 'Butter', values: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Styles.height,
          width: Styles.width,
          decoration: Styles.boxdeco,
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Daily Shopping List', style: Styles.pageHeading),
              ),
              Column(
                children: dailyList.map((dl) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: BasicCard(
                      child: Chklist(
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: dl.values,
                        onChanged: (value) {
                          setState(() {
                            dl.values = value;
                          });
                        },
                        text: dl.listTitle,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.add),
          label: Text('Add New Item(s)'),
          onPressed: () {},
        ),
      ),
    );
  }
}
