import 'package:flutter/material.dart';

class CustomButtonOp extends StatelessWidget {

  CustomButtonOp({ required this.onPressed, required this.icon, required this.label ,Key? key }) : super(key: key);

  Function onPressed;
  Widget icon;
  String label;

   @override
   Widget build(BuildContext context) {
       return Container(
         child: Row(
           children: [
             Icon(Icons.label),
             Text(label),
           ],
         ),
       );
         
  }
}