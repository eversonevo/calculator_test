import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDisciplina extends StatelessWidget {

  CustomDisciplina({ required this.color,required this.trimestre ,Key? key }) : super(key: key);

  String trimestre;
  Color color;


   @override
   Widget build(BuildContext context) {
       return Container(
                    width: Get.width * .15,
                    height: Get.height * .9,
                    color: color,
                    child: Text(trimestre),
                  );
  }
}