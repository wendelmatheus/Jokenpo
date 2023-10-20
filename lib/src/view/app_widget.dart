import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/src/view/result_round_view.dart';
import 'home_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home: ResultRound(), theme: ThemeData(brightness: Brightness.dark));
    return MaterialApp(home: HomePage(), theme: ThemeData(brightness: Brightness.dark),);
  }
}