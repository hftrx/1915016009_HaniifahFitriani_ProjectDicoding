import 'package:flutter/material.dart';
import 'package:pa_dicoding/page1.dart';

/*

-------- PA DICODING --------

NAMA  : HANIIFAH FITRIANI
NIM   : 1915016009
KELAS : PEMOGRAMAN MOBILE C 2019

*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Project Akhir Dicoding',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: MainPage());
  }
}
