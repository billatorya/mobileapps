import 'package:flutter/material.dart';

import './screen/home.dart';
import './screen/create.dart';
import './screen/detail.dart';
import './screen/edit.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS MOBILE APPS',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/create': (context) => Insert(),
        '/detail': (context) => Details(),
        '/edit': (context) => Edit(),
      },
    );
  }
}