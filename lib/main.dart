import 'package:flutter/material.dart';
import 'package:squizzy/pages/connexion/accueilConnexion.dart';
import 'package:squizzy/pages/connexion/connexion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccueilConnexion(),
    );
  }
}