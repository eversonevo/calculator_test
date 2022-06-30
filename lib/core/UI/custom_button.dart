import 'package:calculator_test/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView<HomeController> {

  CustomButton({required int index,Key? key }) : _index = index, super(key: key);  

  int _index;
  final Color _color = const Color(0XFFFFFBFB);
  final Color _colorIgual = const Color(0XFFD9EF51);
  
   @override
   Widget build(BuildContext context) {
     
       return Container(
         width: 71,
         height: 66,
         color: _index != 15 ? _color : _colorIgual,
         child: Center(child: Container(),),
       );
  }
}