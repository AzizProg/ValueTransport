import "package:flutter/material.dart";
import 'tarif.dart';

class Number extends StatefulWidget {
  @override
  State<Number> createState() => _Number();
}

class _Number extends State<Number> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(child: Column(children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 30),
            child: const CircleAvatar(
              foregroundImage: AssetImage("images/logo.png"),
              radius: 40,
            ),
          ),
          SizedBox(height: 10),
          const Text(
            "Abonnement",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Container(

            width: width,
            margin: EdgeInsets.only(left: 40, right: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Colors.grey,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/momo.jpeg",
                      fit: BoxFit.fitWidth, height: 150, width: 300),
                ),
                SizedBox(height: 20),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Align(
                                widthFactor: 0.5,
                                heightFactor: 0.5,
                                child: Icon(Icons.call),
                              ),
                              labelText: "05XXXXXXXX",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                              hoverColor: Colors.black,
                            ),
                            keyboardType: TextInputType.phone),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: const Text(
                    "S'abonner",
                    style: TextStyle(color: Colors.amber),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Color(0xff403E9F))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tarif()),
                    );
                  },
                ),
                SizedBox(height: 20)
              ],
            ),
          )
        ]),),
      ),
    );
  }
}
