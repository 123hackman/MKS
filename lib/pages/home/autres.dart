import 'package:flutter/material.dart';

class Autres extends StatefulWidget {
  Autres({Key? key}) : super(key: key);

  @override
  State<Autres> createState() => _AutresState();
}

class _AutresState extends State<Autres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Autre page"),
      ),
    );
  }
}