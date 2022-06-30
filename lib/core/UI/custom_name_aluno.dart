import 'package:calculator_test/core/UI/app_config_ui.dart';
import 'package:flutter/material.dart';

class CustomNameAluno extends StatelessWidget {

  // ignore: prefer_const_constructors_in_immutables
  CustomNameAluno({required String name, Key? key }) : 
  _name = name,
  super(key: key);

  final String _name;

   @override
   Widget build(BuildContext context) {
       return Container(
         child: Column(
           children: [
             // ignore: prefer_interpolation_to_compose_strings
             Text('Nome do aluno: '+_name, style: AppConfigUI.styleText,)
           ],
         ),
       );
  }
}