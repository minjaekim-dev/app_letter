import 'package:flutter/material.dart';
import 'package:my_letter_app/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Love Letter',
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(child: Center(child: Text('home'))),
              Container(child: Center(child: Text('search'))),
              Container(child: Center(child: Text('save'))),
              Container(child: Center(child: Text('home'))),
              Container(child: Center(child: Text('more'))),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
