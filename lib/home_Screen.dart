import 'package:flutter/material.dart';
import 'package:tic_tac/auto_play.dart';
import 'package:tic_tac/check_winner.dart';
import 'package:tic_tac/game_logic.dart';
import 'package:tic_tac/player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String activePlayer = "X";

  bool overGame  = false ;
String result = '' ;


  int turn = 0;

  Game game = Game();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SwitchListTile.adaptive(
            value: isSwitched,
            onChanged: (newValue) {
              setState(() {
                isSwitched = newValue;
              });
            },
            title: Text(
              'Turn on/off Two Player Mode '.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26),
            ),
          ),
          Text(
            "it's turn! $activePlayer".toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 52),
          ),
          Expanded(
            child: GridView.count(
                padding: EdgeInsets.all(16),
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1.0,
                children: List.generate(
                    9,
                    (index) => InkWell(
                          onTap: () {


                            overGame ? null :  _ontap(index);


                          },
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            child: Center(
                              child: Text(
                                Player.listx.contains(index)
                                    ? 'X'
                                    : Player.listo.contains(index)
                                        ? 'O'
                                        : '',
                                style: TextStyle(
                                    fontSize: 52,
                                    color: Player.listx.contains(index)
                                        ? Color(0xff4169e8)
                                        : Colors.pink),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff001456),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ))),
          ),
          Text(
            result.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 52),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton.icon(
                onPressed: () {
                  Player.listx = [];
                  Player.listo = [];
                  activePlayer = 'X';

                  overGame = false;

                  result = '';

                  turn = 0;
                  setState(() {});
                },
                label: Text(
                  'Repeat The Game',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Color(0xff4169e8)),
                ),
                icon: Icon(
                  Icons.repeat,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  _ontap(int index) async {
    bool isX = Player.listx.isEmpty || !Player.listx.contains(index);
    bool isO= Player.listo.isEmpty || !Player.listo.contains(index);
    if
    ( isO && isX)
   {
     Game.play(index, activePlayer);


      updateState();
    }
    if (!isSwitched && !overGame)
      {
        await AutoPlay().autoPlay(activePlayer);
        updateState();
      }
  }
void updateState ()
{
  setState(() {
    activePlayer = activePlayer == 'X'? 'O' : 'X';
    turn++;
    String winnerPlayer = CheckWinner().chechWinner(overGame);

    if (winnerPlayer != '')
      {
        overGame =true;

       result ='$winnerPlayer is winner';


      }

    else if ( !overGame && turn == 9)
      {
        print(turn);
        result = "It's Draw";
      }

  });
}
}
