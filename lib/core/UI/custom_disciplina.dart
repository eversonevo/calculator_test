import 'package:calculator_test/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDisciplina extends GetView<HomeController> {

  CustomDisciplina({ required this.color,required this.trimestre ,Key? key }) : super(key: key);

  String trimestre;
  Color color;


   @override
   Widget build(BuildContext context) {
       return Container(
                    width: Get.width * .15,
                    height: Get.height * .9,
                    color: color,
                    child: LayoutBuilder(
                      builder: (_,constraints){
                      return ListView.builder(
                        itemCount: controller.editingController1T.length,
                        itemBuilder: (_,index){
                          print('max '+constraints.maxWidth.toString());
                          return SizedBox(
                            width: constraints.maxWidth,
                            height: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                //maxLength: 3,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  //enabledBorder: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                  borderSide: BorderSide(color: Colors.blue)),
                                ),
                                controller: controller.editingController1T[index],
                                onChanged: (String? value){
                                  controller.editingController1T[index].text = value!;

                                  print('cc'+controller.editingController1T[index].text.toString());
                                },
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  );
  }
}