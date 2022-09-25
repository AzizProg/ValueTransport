import 'package:flutter/material.dart';

import 'register.dart';
import 'number.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: const Text(
                "CONNEXION",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),

            //Fin text connexion

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
                  child: Column(children: [
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Form(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Numéro de téléphone",
                                labelStyle: TextStyle(color: Colors.white),
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white))),
                            keyboardType: TextInputType.numberWithOptions(),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Form(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Mot de passe",
                                labelStyle: TextStyle(color: Colors.white),
                                hintStyle: TextStyle(color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white))),
                            keyboardType: TextInputType.numberWithOptions(),
                          ),
                        )),
                    Form(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Number()),
                          );
                        },
                        child: Text('Se connecter'),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Pas de compte?"),
                        TextButton(
                          onPressed: () {
                            MaterialPageRoute(builder: (context) => Register());
                          },
                          child: Text("Inscrivez-vous"),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/logo.png"),
                      radius: 56,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
