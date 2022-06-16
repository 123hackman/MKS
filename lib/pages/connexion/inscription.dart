import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  TextEditingController adresseController = TextEditingController();
  TextEditingController mdpController = TextEditingController();
  TextEditingController confirmeMdpController = TextEditingController();
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
          hintText: "Nom",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.text,
      onSaved: (val) => emailController.text = val!,
      validator: (val) => val!.isEmpty ? "Email Vide" : null,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email_outlined),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final telephoneField = TextFormField(
      controller: telephoneController,
      keyboardType: TextInputType.phone,
      onSaved: (val) => telephoneController.text = val!,
      validator: (val) => val!.isEmpty ? "Champ Vide" : null,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.phone_android),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Téléphone",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final adresseField = TextFormField(
      controller: adresseController,
      keyboardType: TextInputType.text,
      onSaved: (val) => adresseController.text = val!,
      validator: (val) => val!.isEmpty ? "Champ Vide" : null,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.home),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Adresse",
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
      textInputAction: TextInputAction.next,
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

    final confirmeMdpField = TextFormField(
      obscureText: obscureTextValue,
      controller: confirmeMdpController,
      keyboardType: TextInputType.text,
      onSaved: (val) => confirmeMdpController.text = val!,
      validator: (val) => val== mdpController.text ? "Mot de passe invalide" : null,
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
          hintText: "Confirmer le Passe",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final connexionButtton = SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 233, 168, 4),
          padding: const EdgeInsets.all(15),
          shape: const StadiumBorder(),
        ), 
        child: const Text('Créer'),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30), 
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Text("S'Inscrire", style: TextStyle(fontSize: 25),),
            ),
            SizedBox(height: 30,),
            Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  usernameField,
                  SizedBox(height: 20,),
                  emailField,
                  SizedBox(height: 20,),
                  telephoneField,
                  SizedBox(height: 20,),
                  adresseField,
                  SizedBox(height: 20,),
                  mdpField,
                  SizedBox(height: 20,),
                  confirmeMdpField,
                  SizedBox(height: 20,),
                  connexionButtton
                ],
              ) 
            )
          ],
        ),
        )
      ),
    );
  }
}