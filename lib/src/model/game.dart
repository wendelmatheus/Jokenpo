import 'package:pedrapapeltesoura/src/model/round.dart';

enum StatusGame { playerA, playerB, draw }

class Game {
  final List<Round> rounds = [];
  static const roundLimit = 3;

  int _playerA = 0;
  int _playerB = 0;

  int get playerA => _playerA;
  int get playerB => _playerB;

  int get count => rounds.length;
  bool get hasEnded => count >= roundLimit;

  void clearRounds() {
    rounds.clear();
  }

  void addRound(Round round) {
    var result = round.result();
    switch(result) {
      case StatusRound.playerA:
        _playerA++;
        break;
      case StatusRound.playerB:
        _playerB++;
        break;
    }
    rounds.add(round);
  }

  StatusGame result() {
    if(_playerA > _playerB) {
      return StatusGame.playerA;
    } else if(_playerB > _playerA) {
      return StatusGame.playerB;
    } else {
      return StatusGame.draw;
    }
  }
}