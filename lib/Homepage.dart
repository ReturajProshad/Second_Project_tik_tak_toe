import 'package:flutter/material.dart';

class THomepage extends StatefulWidget {
  const THomepage({Key? key}) : super(key: key);

  @override
  State<THomepage> createState() => _THomepageState();
}

bool fplayerswap = true;
bool iswin = false;
int all = 0, OsTime = 0, XsTime = 0;
List<List<String>> Box = [
  ["", "", ""],
  ["", "", ""],
  ["", "", ""],
];

class _THomepageState extends State<THomepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text("TicTacToe"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("O's Point=$OsTime"),
                Text("X's Point=$XsTime"),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Expanded(
                          child: BoxT(context, fplayerswap, 0, 0),
                        ),
                        const SizedBox(width: 4.0,),
                        Expanded(
                          child: BoxT(context, fplayerswap, 0, 1),
                        ),
                         const SizedBox(width: 4.0,),
                        Expanded(
                          child: BoxT(context, fplayerswap, 0, 2),
                        ),
                      ],
                    ),
                  ),
                   const SizedBox(height: 4.0,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: BoxT(context, fplayerswap, 1, 0),
                        ),
                         const SizedBox(width: 4.0,),
                        Expanded(
                          child: BoxT(context, fplayerswap, 1, 1),
                        ),
                         const SizedBox(width: 4.0,),
                        Expanded(
                          child: BoxT(context, fplayerswap, 1, 2),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4.0,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: BoxT(context, fplayerswap, 2, 0),
                        ),
                         const SizedBox(width: 4.0,),
                        Expanded(
                          child: BoxT(context, fplayerswap, 2, 1),
                        ),
                         const SizedBox(width: 4.0,),
                        Expanded(
                          child: BoxT(context, fplayerswap, 2, 2),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 45,),
                  Text("Created By Returaj"),
                  const SizedBox(height: 45,),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Are You Sure..!"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Box = [
                            ["", "", ""],
                            ["", "", ""],
                            ["", "", ""],
                          ];
                          iswin = false;
                          OsTime = 0;
                          XsTime = 0;
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: Text("Yes"),
                      ),
                      SizedBox(width: 20,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("No"),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text("ReSeT"),
        ),
      ),
    );
  }

  String winner = "";

  Widget BoxT(BuildContext context, bool X, int i, int j) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (Box[i][j] == "" && iswin == false) {
            fplayerswap = !fplayerswap;
            Box[i][j] = fplayerswap ? "X" : "O";
            winner = Box[i][j];
            checkwinner();
            setState(() {});
          } else if (iswin == true || winner=="Draw.!") {
            winner="";
            Box = [
              ["", "", ""],
              ["", "", ""],
              ["", "", ""],
            ];
            iswin = false;
            setState(() {});
          }
        },
        child: Text(
          Box[i][j],
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  void checkwinner()
  {
    int allfill=0;
    if((Box[0][0]!="" && Box[1][0]!="" && Box[2][0]!=""))
      {
        if((Box[0][0]==Box[1][0] && Box[0][0]==Box[2][0]))
        {
        iswin=true;
        }
        allfill++;
      }
      if((Box[0][0]!="" && Box[0][1]!="" && Box[0][2]!=""))
      {
        if((Box[0][0]==Box[0][1] && Box[0][0]==Box[0][2]))
        {
        iswin=true;
        }
        allfill++;
      }
      if((Box[1][0]!="" && Box[1][1]!="" && Box[1][2]!=""))
      {
        if((Box[1][0]==Box[1][1] && Box[1][0]==Box[1][2]))
        {
          iswin=true;
        }
        allfill++;
      }
      if((Box[2][0]!="" && Box[2][1]!="" && Box[2][2]!=""))
      {
        if((Box[2][0]==Box[2][1] && Box[2][0]==Box[2][2]))
        {
        iswin=true;
        }

        allfill++;
      }
      if((Box[0][1]!="" && Box[1][1]!="" && Box[2][1]!=""))
      {
        if((Box[0][1]==Box[1][1] && Box[0][1]==Box[2][1]))
        {
        iswin=true;
        }
        allfill++;
      }
      if((Box[0][2]!="" && Box[1][2]!="" && Box[2][2]!=""))
      {
        if((Box[0][2]==Box[1][2] && Box[0][2]==Box[2][2]))
        {
        iswin=true;
        }
        allfill++;
      }
      if((Box[0][0]!="" && Box[1][1]!="" && Box[2][2]!=""))
      {
        if((Box[0][0]==Box[1][1] && Box[0][0]==Box[2][2]))
        {
        iswin=true;
        }
        allfill++;
      }
      if((Box[0][2]!="" && Box[1][1]!="" && Box[2][0]!=""))
      {
        if((Box[0][2]==Box[1][1] && Box[0][2]==Box[2][0]))
        {
        iswin=true;
        }
        allfill++;
      }
      if(allfill==8 && iswin==false)
      {
        all=8;
        winner="Draw.!";
        winneris();
      }
      else if(iswin)
      {
        if(winner=="O") {
          OsTime++;
        } else {
          XsTime++;
        }
        winneris();
      }
  }
  void winneris()
  {
      showDialog(
        context: context,
       builder:(BuildContext context)
       {
            return AlertDialog(
              title: Text(iswin?"Winner Is:":"Match is:"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(winner),
                ],
              ),
            );
       }
       );
  }
}
