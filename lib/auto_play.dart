import 'dart:math';

import 'package:tic_tac/game_logic.dart';
import 'package:tic_tac/player.dart';
class AutoPlay
{

Future<void> autoPlay(String activePlayer) async
{
  List<int>emptyCell = [];
  int index;
  for (int i = 0; i < 9; i++)
    if (!Player.listx.contains(i) && !Player.listo.contains(i))
      emptyCell.add(i);
  if      (Player.listo.containsAll(0, 1) && emptyCell.contains(2)) {
    index = 2;
  }
  else if (Player.listo.containsAll(0, 2) && emptyCell.contains(1)) {
    index = 1;
  }
  else if (Player.listo.containsAll(1, 2) && emptyCell.contains(0)) {
    index = 0;
  } else if (Player.listo.containsAll(3, 4) && emptyCell.contains(5)) {
    index = 5;
  } else if (Player.listo.containsAll(3, 5) && emptyCell.contains(4)) {
    index = 4;
  }
  else if (Player.listo.containsAll(4, 5) && emptyCell.contains(3))
  {
    index = 3;
  }else if (Player.listo.containsAll(6, 7) && emptyCell.contains(8)) {
    index = 8;
  }else if (Player.listo.containsAll(6, 8) && emptyCell.contains(7)) {
    index = 7;
  }
  else if (Player.listo.containsAll(7, 8) && emptyCell.contains(6)) {
    index = 6;
  }
  else if (Player.listo.containsAll(0, 4) && emptyCell.contains(8)) {
    index = 8;
  }
  else if (Player.listo.containsAll(0, 8) && emptyCell.contains(4)) {
    index = 4;
  }
  else if (Player.listo.containsAll(4, 8) && emptyCell.contains(0)) {
    index = 0;
  }
  else if (Player.listo.containsAll(2, 6) && emptyCell.contains(4)) {
    index = 4;
  }
  else if (Player.listo.containsAll(2, 4) && emptyCell.contains(6)) {
    index = 6;
  }
  else if (Player.listo.containsAll(4, 6) && emptyCell.contains(2)) {
    index = 2;
  }else if (Player.listo.containsAll(0, 3) && emptyCell.contains(6)) {
    index = 6;
  }else if (Player.listo.containsAll(0, 6) && emptyCell.contains(3)) {
    index = 3;
  }
  else if (Player.listo.containsAll(3, 6) && emptyCell.contains(0)) {
    index = 0;
  }
  else if (Player.listo.containsAll(1, 4) && emptyCell.contains(7)) {
    index = 7;
  }
  else if (Player.listo.containsAll(1, 7) && emptyCell.contains(4)) {
    index = 4;
  }
  else if (Player.listo.containsAll(4, 7) && emptyCell.contains(1)) {
    index = 1;
  }
  else if (Player.listo.containsAll(2, 5) && emptyCell.contains(8)) {
    index = 8;
  }
  else if (Player.listo.containsAll(2, 8) && emptyCell.contains(5)) {
    index = 5;
  }
  else if (Player.listo.containsAll(5, 8) && emptyCell.contains(2)) {
    index = 2;
  }


  else if (Player.listx.containsAll(0, 1) && emptyCell.contains(2)) {
    index = 2;
  }
  else if (Player.listx.containsAll(0, 2) && emptyCell.contains(1)) {
    index = 1;
  }
  else if (Player.listx.containsAll(1, 2) && emptyCell.contains(0)) {
    index = 0;
  } else if (Player.listx.containsAll(3, 4) && emptyCell.contains(5)) {
    index = 5;
  } else if (Player.listx.containsAll(3, 5) && emptyCell.contains(4)) {
    index = 4;
  }
  else if (Player.listx.containsAll(4, 5) && emptyCell.contains(3))
  {
    index = 3;
  }else if (Player.listx.containsAll(6, 7) && emptyCell.contains(8)) {
    index = 8;
  }else if (Player.listx.containsAll(6, 8) && emptyCell.contains(7)) {
    index = 7;
  }
  else if (Player.listx.containsAll(7, 8) && emptyCell.contains(6)) {
    index = 6;
  }
  else if (Player.listx.containsAll(0, 4) && emptyCell.contains(8)) {
    index = 8;
  }
  else if (Player.listx.containsAll(0, 8) && emptyCell.contains(4)) {
    index = 4;
  }
else if (Player.listx.containsAll(4, 8) && emptyCell.contains(0)) {
    index = 0;
  }
else if (Player.listx.containsAll(2, 6) && emptyCell.contains(4)) {
    index = 4;
  }
else if (Player.listx.containsAll(2, 4) && emptyCell.contains(6)) {
    index = 6;
  }
else if (Player.listx.containsAll(4, 6) && emptyCell.contains(2)) {
    index = 2;
  }else if (Player.listx.containsAll(0, 3) && emptyCell.contains(6)) {
    index = 6;
  }else if (Player.listx.containsAll(0, 6) && emptyCell.contains(3)) {
    index = 3;
  }
else if (Player.listx.containsAll(3, 6) && emptyCell.contains(0)) {
    index = 0;
  }
else if (Player.listx.containsAll(1, 4) && emptyCell.contains(7)) {
    index = 7;
  }
else if (Player.listx.containsAll(1, 7) && emptyCell.contains(4)) {
    index = 4;
  }
else if (Player.listx.containsAll(4, 7) && emptyCell.contains(1)) {
    index = 1;
  }
else if (Player.listx.containsAll(2, 5) && emptyCell.contains(8)) {
    index = 8;
  }
else if (Player.listx.containsAll(2, 8) && emptyCell.contains(5)) {
    index = 5;
  }
else if (Player.listx.containsAll(5, 8) && emptyCell.contains(2)) {
    index = 2;
  }


  else {
    Random random = Random();
    int randomIndex = random.nextInt(emptyCell.length);
    index = emptyCell[randomIndex];
  }
  Game.play(index, activePlayer);
}}