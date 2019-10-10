import 'package:flutter/material.dart';
import 'package:Twitter-Master/pages/card.dart';

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.indigo,
            accentColor: Colors.indigo),
        home: DefaultTabController(),
    );
  }
}
