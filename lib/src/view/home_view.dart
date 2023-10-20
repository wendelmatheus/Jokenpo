import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/src/controller/game_controller.dart';
import 'package:pedrapapeltesoura/src/model/game.dart';
import 'package:pedrapapeltesoura/src/view/result_round_view.dart';
import '../model/match.dart';
import '../model/round.dart';
import 'components/myButton.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text("Escolha um", style: TextStyle(fontSize: 38.0)),
          ),
          MyButton(text: "Pedra", onPressed: () {
            var roundFeedback = GameController.instance.updateGame(Match(Options.rock));
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ResultRound(roundFeedback))
            );
          }),
          MyButton(text: "Papel", onPressed: () {
            var roundFeedback = GameController.instance.updateGame(Match(Options.paper));
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ResultRound(roundFeedback))
            );
          }),
          MyButton(text: "Tesoura", onPressed: () {
            var roundFeedback = GameController.instance.updateGame(Match(Options.scissors));
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ResultRound(roundFeedback))
            );
          })
        ],
      ),
    ),);
  }
}
