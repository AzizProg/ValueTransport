import 'package:flutter/material.dart';

import 'login.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  //var _FormKey = GlobalKey<FormState>();
  //String? _user;
  //String? _password;
  //String? _repeatPassword;

  TextEditingController nom = TextEditingController();
  TextEditingController numero = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mot = TextEditingController();

  Future<void> insertrecord() async {
    if (nom.text != "" ||
        numero.text != "" ||
        email.text != "" ||
        mot.text != "") {
      try {
        String uri="https://transport.simplonien-da.net/register.php";
        final res = await http.post(
            Uri.parse(uri),
            body: {
              "nom_complet":nom.text,
              "numero_telephone":numero.text,
              "email":email.text,
              "mot_de_passe":mot.text
            });

        var response = jsonDecode(res.body);

        if (response["success"] == "true") {
          print('record inserted');
        } else {
          print('some issue');
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("please fill all fileds");
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return SafeArea(
        top: true,
        bottom: true,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: const Text(
                    "INSCRIPTION",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),

                //Fin text inscription

                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                      width: size,
                      padding: EdgeInsets.only(top: 50, bottom: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffFFCB09),
                          borderRadius: BorderRadius.circular(50)),
                      child: Form(
                        //key: _FormKey,
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller: nom,
                                        decoration:
                                        Input(label: "Nom d'utilisateur"),
                                      ),
                                      TextFormField(
                                        controller: numero,
                                        decoration: Input(label: "Contact"),
                                      ),
                                      TextFormField(
                                        controller: email,
                                        decoration: Input(label: "Email"),
                                      ),
                                      TextFormField(
                                        controller: mot,
                                        decoration: Input(label: "Mot de passe"),
                                        obscureText: true,
                                      ),
                                    ],
                                  )),
                              SizedBox(height: 5),
                              ElevatedButton(
                                child: Text("S'inscrire"),
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  insertrecord();
                                  //_FormKey.currentState!.validate();
                                  //_FormKey.currentState!.save();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Login()),
                                  );
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Vous avez déjà un compte?"),
                                  TextButton(
                                    onPressed: () {
                                      MaterialPageRoute(builder: (context) => Login());
                                    },
                                    child: Text("Conectez-vous"),
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    //logo en cercle
                    const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 53,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/logo.png"),
                          radius: 50,
                        )),
                    //logo en cercle
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  //Declaration de l'objet
  InputDecoration Input({String? label}) {
    return InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
        focusedBorder:
        // ignore: prefer_const_constructors
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
  }
//Fin de la declaration
}
