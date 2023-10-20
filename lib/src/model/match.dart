import 'dart:math';

enum Options { rock, paper, scissors }

class Match {
  final Options match;

  Match(this.match);
  Match.random() : match = Options.values.elementAt(Random().nextInt(Options.values.length));
}