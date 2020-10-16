import 'package:flutter/material.dart';
import 'package:home_cart/components/navigation.dart';
import 'package:home_cart/pages/dailyList_page.dart';
import 'package:home_cart/pages/home_screen.dart';
import 'package:home_cart/pages/login_page.dart';
import 'package:home_cart/pages/profile_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/login': (context) => Login(),
        '/daily': (context) => DailyList(),
        '/navigation': (context) => NavigationBar()
      },
    );
  }
}
