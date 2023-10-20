import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/src/controller/game_controller.dart';
import 'package:pedrapapeltesoura/src/model/game.dart';
import 'package:pedrapapeltesoura/src/view/home_view.dart';

import 'components/myButton.dart';

class ResultGame extends StatefulWidget {
  StatusGame result;

  @override
  State<ResultGame> createState() {
    return ResultGameState(result);
  }

  ResultGame(this.result);
}

class ResultGameState extends State<ResultGame> {
  StatusGame result;

  ResultGameState(this.result);

  static String textResult(StatusGame result) {
    switch (result) {
      case StatusGame.playerA:
        return "Parabéns. Você venceu!";
      case StatusGame.playerB:
        return "Que pena. Você perdeu!";
      case StatusGame.draw:
        return "Boa partida. Você empatou!";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(textResult(result), style: TextStyle(fontSize: 27.0)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyButton(text: "Voltar",
                onPressed: () {
                GameController.instance.newGame();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage())
                  );
                },),
            )
          ],
        ),
      ),
    );
  }
}
