import 'package:flutter/material.dart';
import 'package:squizzy/pages/connexion/renitiaisationMdp.dart';
import 'package:squizzy/pages/home/home.dart';

class Connexion extends StatefulWidget {
  Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController mdpController = TextEditingController();
  bool obscureTextValue = true;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final usernameField = TextFormField(
      controller: usernameController,
      keyboardType: TextInputType.name,
      onSaved: (val) => usernameController.text = val!,
      validator: (val) => val!.isEmpty ? "Email Vide" : null,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.person),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final mdpField = TextFormField(
      obscureText: obscureTextValue,
      controller: mdpController,
      keyboardType: TextInputType.text,
      onSaved: (val) => mdpController.text = val!,
      validator: (val) => val!.isEmpty ? "Mot de Passe Vide" : null,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureTextValue = !obscureTextValue;
              });
            },
            child: obscureTextValue
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  )
                : const Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Mot de Passe",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final connexionButtton = SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Home())));
        },
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 233, 168, 4),
          padding: const EdgeInsets.all(15),
          shape: const StadiumBorder(),
        ), 
        child: const Text('Connecter'),
      ),
    );
    
    final faceBookButton = SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 4, 84, 233),
          padding: const EdgeInsets.all(13),
          shape: const StadiumBorder(),
        ), 
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.phone),
              Text("FaceBook")
            ],
          ),
        ),
      ),          
    );

    final googleButton = SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 183, 3, 3),
          padding: const EdgeInsets.all(13),
          shape: const StadiumBorder(),
        ), 
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.home),
              Text('Google'),
            ],
          ),
        )
      ),          
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:  Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
          children: <Widget>[
            const SizedBox(height: 40,),
            const Text("Se Connecter", style: TextStyle( fontSize: 25),),
            const SizedBox(height: 30,),
            Form(
              key: _formkey,
              child: Column(
              children: [
                usernameField,
                const SizedBox(height: 15),
                mdpField
              ],
            ),),
            const SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                connexionButtton,
                const SizedBox(height: 8),
                Center(
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => RenitialiserMdp())));
                    }, 
                    child: const Text("Vous avez oubliez votre mot de passe?", style: TextStyle(color: Colors.blueGrey),)),
                ),
                const SizedBox(height: 22),
                const Center(
                  child: Text('Ou vous connectez avec'),
                ),
                const SizedBox(height: 15),
                faceBookButton,
                const SizedBox(height: 15),
                googleButton
              ],
            )
          ],
        ), 
        
        )
      ),
      )
    );
  }
}