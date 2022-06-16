import 'package:flutter/material.dart';

class RenitialiserMdp extends StatefulWidget {
  RenitialiserMdp({Key? key}) : super(key: key);

  @override
  State<RenitialiserMdp> createState() => _RenitialiserMdpState();
}

class _RenitialiserMdpState extends State<RenitialiserMdp> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.text,
      onSaved: (val) => emailController.text = val!,
      validator: (val) => val!.isEmpty ? "Email Vide" : null,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email_outlined),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Saisie le code",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final connexionButtton = SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){
           Navigator.push(context,
              MaterialPageRoute(builder: ((context) => CodeVerification())));
        },
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 233, 168, 4),
          padding: const EdgeInsets.all(15),
          shape: const StadiumBorder(),
        ), 
        child: const Text('Envoyer'),
      ),
    );


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Center(
              child: Text("Réinitialisation du mot de passe", style: TextStyle(fontSize: 25,),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 40,),
            Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  emailField,
                  SizedBox(height: 15,),
                  connexionButtton,
                ],
              ))
          ],
        ),
          )
      ),
    );
  }
}

class CodeVerification extends StatefulWidget {
  CodeVerification({Key? key}) : super(key: key);

  @override
  State<CodeVerification> createState() => _CodeVerificationState();
}

class _CodeVerificationState extends State<CodeVerification> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController codeVerifController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final codeVerifField = TextFormField(
      controller: codeVerifController,
      keyboardType: TextInputType.text,
      onSaved: (val) => codeVerifController.text = val!,
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

    final connexionButtton = SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: ((context) => NouveauMdp())));
        },
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 233, 168, 4),
          padding: const EdgeInsets.all(15),
          shape: const StadiumBorder(),
        ), 
        child: const Text('Envoyer',),
      ),
    );


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Center(
              child: Text("Nous avons envoyer un code de vérification sur votre e-mail", style: TextStyle(fontSize: 25,),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 40,),
            Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  codeVerifField,
                  SizedBox(height: 15,),
                  connexionButtton,
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Vous avez pas reçu le code?"),
                        TextButton(
                          onPressed: (){}, 
                          child: Text("Renvoyer", style: TextStyle(color:  Color.fromARGB(255, 233, 168, 4),),))
                      ],
                    ),
                  )
                ],
              ))
          ],
        ),
          )
      ),
    );
  }
}

class NouveauMdp extends StatefulWidget {
  NouveauMdp({Key? key}) : super(key: key);

  @override
  State<NouveauMdp> createState() => _NouveauMdpState();
}

class _NouveauMdpState extends State<NouveauMdp> {
  final _formkey = GlobalKey<FormState>();
  bool obscureTextValue = true;
  TextEditingController mdpController = TextEditingController();
  TextEditingController confirmeMdpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        child: const Text('Suivant'),
      ),
    );


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Center(
              child: Text("Entrez votre nouveau mot de passe", style: TextStyle(fontSize: 25,),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 40,),
            Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mdpField,
                  SizedBox(height: 15,),
                  confirmeMdpField,
                  SizedBox(height: 15,),
                  connexionButtton,
                ],
              ))
          ],
        ),
          )
      ),
    );
  }
}

