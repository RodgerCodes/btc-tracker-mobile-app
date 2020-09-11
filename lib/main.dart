import 'package:BTCTRACKER/pages/graph_1.dart';
import 'package:flutter/material.dart';
import 'package:BTCTRACKER/pages/splash.dart';
import 'package:BTCTRACKER/pages/home.dart';
import 'package:BTCTRACKER/pages/graph_2.dart';
import 'package:BTCTRACKER/pages/settings.dart';
import 'package:BTCTRACKER/pages/themes.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/': (context) => Splashscreen(),
    '/home': (context) => Home(),
    '/graphs-1':(context) => Graph_1(),
    '/graphs-2':(context) => Graph_2(),
    '/settings':(context) => Settings(),
    '/Themes':(context) => Themes()
  }
));