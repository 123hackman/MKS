import 'package:flutter/material.dart';
import 'package:squizzy/pages/connexion/connexion.dart';
import 'package:squizzy/pages/connexion/inscription.dart';

class AccueilConnexion extends StatefulWidget {
  const AccueilConnexion({Key? key}) : super(key: key);

  @override
  State<AccueilConnexion> createState() => _AccueilConnexionState();
}

class _AccueilConnexionState extends State<AccueilConnexion> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget> [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/connexionImage.png'), 
                fit: BoxFit.fill,
                ),
            ),
            width:  MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height - 250,
          ),
          const SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget>[
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Connexion())));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 233, 168, 4),
                    padding: const EdgeInsets.all(15),
                    shape: const StadiumBorder(),
                  ), 
                  child: const Text('Connecter'),
                  ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Inscription())));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(
                      side: BorderSide(width: 2, color: Color.fromARGB(255, 233, 168, 4))
                      ),
                    primary: const Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.all(15),
                  ), 
                  child: const Text('Créer compte', style: TextStyle(color: Color.fromARGB(255, 233, 168, 4) , fontWeight: FontWeight.bold),),
                  ),
              ),
            ],
          ),
            )
        ],
      ),
    );
  }
}