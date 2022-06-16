import 'package:flutter/material.dart';

class Plus extends StatefulWidget {
  Plus({Key? key}) : super(key: key);

  @override
  State<Plus> createState() => _PlusState();
}

class _PlusState extends State<Plus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Text("Plus page"),
        ),
      ),
    );
  }
}