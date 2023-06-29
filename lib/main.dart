import 'package:flutter/material.dart';

import 'Homepage.dart';

void main()
{
  runApp(TicTacToe());
}
class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,
      title:"ticTactoe",
      home:THomepage(),
    );
  }
}