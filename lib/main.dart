import 'package:flutter/material.dart';
import 'package:milkshakeflutter_app/homescreen.dart';
import 'login.dart';
import 'register.dart';

import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'milkshake UI',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Screen0(),
          '/login': (context) => LoginScreen(),
          '/Second': (context) => Rgistration(),
          '/home': (context) => HomeScreen(),
        });
  }
}
