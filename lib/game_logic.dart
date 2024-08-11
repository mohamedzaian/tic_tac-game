import 'dart:math';

import 'package:tic_tac/player.dart';

extension ConatainAll on List
{
  bool containsAll(  int x,  int y, [ z])
  {
    if (z == null)
  {
    return this.contains(x) && this.contains(y);
  }
    else
    return this.contains(x) && this.contains(y) && this.contains(z);

  }


}
class Game {
static  void play (int index , String activePlayer)
{
  if (activePlayer == 'X'){
    Player.listx.add(index);

  }
  else
    Player.listo.add(index);

}

}
