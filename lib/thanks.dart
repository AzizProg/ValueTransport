import "package:flutter/material.dart";

import 'itinerary.dart';

class Thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Column(

          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: CircleAvatar(
                foregroundImage: AssetImage("images/logo.png"),
                radius: 40,
              ),
            ),
            SizedBox(height: 10),
            Text("Prix",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50),
            Text("Felicitations"),
            SizedBox(height: 10),
            Text("Commencez à utiliser ValueTransport"),

            SizedBox(height: 50),
            ElevatedButton(
              child: Text(
                "Acceder a la carte",
                style: TextStyle(color: Colors.amber),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Color(0xff403E9F))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Itinerary()),
                );
              },
            ),
          ]
      ),)
    );
  }
}
