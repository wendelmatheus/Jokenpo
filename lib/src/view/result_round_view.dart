import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/src/controller/game_controller.dart';
import 'package:pedrapapeltesoura/src/model/round.dart';
import 'package:pedrapapeltesoura/src/view/result_game_view.dart';

import 'components/myButton.dart';

class ResultRound extends StatefulWidget {
  StatusRound result;

  @override
  State<ResultRound> createState() {
    return ResultRoundState(result);
  }

  ResultRound(this.result);
}

class ResultRoundState extends State<ResultRound> {
  StatusRound result;

  ResultRoundState(this.result);

  static String textResult(StatusRound result) {
    switch (result) {
      case StatusRound.playerA:
        return "Você venceu essa rodada!";
      case StatusRound.playerB:
        return "Você perdeu essa rodada!";
      case StatusRound.draw:
        return "Empate!";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(textResult(result),
                  style: const TextStyle(fontSize: 27.0)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyButton(
                  text: "Continuar",
                  onPressed: () => GameController.instance.checkRounds() ?
                      //GameController.instance.;
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => ResultGame(GameController.instance.currentGame.result()))
                    )
                      : Navigator.pop(context)),
            ),
          ],
        ),
      ),
    );
  }
}
