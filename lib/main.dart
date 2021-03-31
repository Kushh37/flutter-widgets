import 'package:flutter/material.dart';
import 'package:flutter_widgets/Pages/tabbar.dart';
import 'package:flutter_widgets/Routes/routes.dart';

import 'Pages/homepage.dart';
import 'Pages/willpopscope.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Utils',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => MyHomePage(),
        MyRoutes.willpopscope: (context) => WilllPopScope(),
        MyRoutes.tabBar: (context) => TaabBar(),
      },
    );
  }
}
