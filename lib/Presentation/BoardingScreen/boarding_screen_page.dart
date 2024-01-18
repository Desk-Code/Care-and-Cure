import 'package:flutter/material.dart';

class BoardingScreenPage extends StatefulWidget {
  const BoardingScreenPage({super.key});

  @override
  State<BoardingScreenPage> createState() => _BoardingScreenPageState();
}

class _BoardingScreenPageState extends State<BoardingScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}
