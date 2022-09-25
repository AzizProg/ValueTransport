import 'package:flutter/material.dart';

class ModelPrix extends StatelessWidget{
  String nom='';
  String prix="";
  String valuePrix='';

  ModelPrix({required this.nom,required this.prix, required this.valuePrix});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      width: width,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration:BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
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
          Text(this.nom),
          Row(
            children: [
              Text(this.prix,style: TextStyle(color: Color(0xff403E9F))),
              Text(this.valuePrix,style: TextStyle(color: Color(0xff403E9F))),
            ],
          )

        ],
      ),
    );
  }
}