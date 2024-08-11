import 'package:tic_tac/player.dart';

import 'game_logic.dart';
class CheckWinner
{

String chechWinner(bool gameOver) {
  String winner = '';
  if (Player.listx.containsAll(0, 1, 2) ||
      Player.listx.containsAll(3, 4, 5) ||
      Player.listx.containsAll(6, 7, 8) ||
      Player.listx.containsAll(0, 3, 6) ||
      Player.listx.containsAll(1, 4, 7) ||
      Player.listx.containsAll(2, 5, 8) ||
      Player.listx.containsAll(0, 4, 8) ||
      Player.listx.containsAll(2, 4, 6)
  )
    winner = 'X';
  else if (Player.listo.containsAll(0, 1, 2) ||
      Player.listo.containsAll(3, 4, 5) ||
      Player.listo.containsAll(6, 7, 8) ||
      Player.listo.containsAll(0, 3, 6) ||
      Player.listo.containsAll(1, 4, 7) ||
      Player.listo.containsAll(2, 5, 8) ||
      Player.listo.containsAll(0, 4, 8) ||
      Player.listo.containsAll(2, 4, 6))
    winner = 'O';
  else if (gameOver) {
    winner = '';
  }
  return winner;
}}