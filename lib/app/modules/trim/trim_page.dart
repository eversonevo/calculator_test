import 'package:flutter/material.dart';

class TrimPage extends StatelessWidget {

  TrimPage({required this.controller,required this.disciplina, required this.trimestre, Key? key }) : super(key: key);

  String disciplina;
  String trimestre;
  TextEditingController controller;


   @override
   Widget build(BuildContext context) {

     TextEditingController teste = TextEditingController();
       return Column(
         children: [
           Row(
             children: [
               Text(disciplina),
               TextFormField(
                 controller: controller,
                decoration: InputDecoration(
                  label: Text('Nota'),                  
                ),

               ),
             ],
           ),
         ],
       );
  }
}