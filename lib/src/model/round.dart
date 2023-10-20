import 'match.dart';

enum StatusRound { playerA, playerB, draw }

class Round {
  final Match _playerA;
  final Match _playerB;

  static const results = [
    [StatusRound.draw, StatusRound.playerB, StatusRound.playerA],
    [StatusRound.playerA, StatusRound.draw, StatusRound.playerB],
    [StatusRound.playerB, StatusRound.playerA, StatusRound.draw]
  ];

  Round(this._playerA, this._playerB);

  StatusRound result() => results[_playerA.match.index][_playerB.match.index];
}
