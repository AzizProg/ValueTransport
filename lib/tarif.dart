import 'package:flutter/material.dart';

import 'thanks.dart';

class Tarif extends StatefulWidget {
  @override
  State<Tarif> createState() => _Tarif();
}

class _Tarif extends State<Tarif> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.only(top: 30),
            child: CircleAvatar(
              foregroundImage: AssetImage("images/logo.png"),
              radius: 40,
            ),
          ),
          SizedBox(height: 10),
          Text("Prix",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          )),
          SizedBox(height: 10),
          Box(text: "1000 XOF / Mois"),
          SizedBox(height: 20),
          Box(text: "500 XOF / Semaine"),
          SizedBox(height: 20),
          Box(text: "10900 XOF / Ans"),
        ],
      ),
    );
  }

  Container Box({String text = ''}) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      height: height / 5,
      width: width,
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
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
          Text(
            text,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text(
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
    MaterialPageRoute(builder: (context) => Thanks()),
    );
    },

          ),
        ],
      ),
    );
  }
}
