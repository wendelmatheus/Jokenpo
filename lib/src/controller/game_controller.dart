import 'package:flutter/material.dart';
import 'package:pedrapapeltesoura/src/model/game.dart';
import 'package:pedrapapeltesoura/src/model/match.dart';

import '../model/round.dart';

class GameController {

  static GameController instance = GameController();

  newGame() => _currentGame = Game();

  Game _currentGame = Game();
  Game get currentGame => _currentGame;

  bool checkRounds() {
    return _currentGame.hasEnded;
  }

  StatusRound updateGame(Match match) {
    Round round = Round(match, Match.random());
    _currentGame.addRound(round);
    return round.result();
  }
}