import 'package:calculator_test/app/modules/home/home_controller2.dart';
import 'package:calculator_test/core/UI/custom_button.dart';
import 'package:calculator_test/core/UI/custom_button_op.dart';
import 'package:calculator_test/core/UI/custom_disciplina.dart';
import 'package:calculator_test/core/UI/custom_name_aluno.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //HomeController2 home = Get.put(HomeController2());

    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: const Color(0XFF8D7F7F),
        child: Column(
          children: [
            CustomNameAluno(name: 'Pedro da Silva'),
            const SizedBox(height: 10,),
            Row(
              children: [
                InkWell(
                  onTap: controller.habilitarNotas1Trim,
                  child: CustomButtonOp(onPressed: controller.habilitarNotas1Trim, icon: const Icon(Icons.label), label: '1º TRIM')),
                InkWell(
                  onTap: controller.habilitarNotas2Trim,
                  child: CustomButtonOp(onPressed: controller.habilitarNotas2Trim, icon: const Icon(Icons.label), label: '2º TRIM')),
                InkWell(
                  onTap: controller.habilitarNotas3Trim,
                  child: CustomButtonOp(onPressed: controller.habilitarNotas3Trim, icon: const Icon(Icons.label), label: '3º TRIM')),
                // Média
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: Get.width * .30,
                  height: Get.height * .9,
                  color: Colors.cyan,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                           itemCount: controller.disciplinas.length,
                           itemBuilder: (_,index){                             
                              return Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 15,),
                                  Text(controller.disciplinas[index]),
                                ],
                              );
                           },

                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: controller.primeiroTrim.value == true  ? true : false,
                  child: CustomDisciplina(trimestre: '1º TRIM',color: Colors.red,),
                ),
                Visibility(
                  visible: !controller.segundoTrim.value  ? true : false,
                  child: SizedBox(width: Get.width * .15,)),
                Visibility(
                  visible: controller.segundoTrim.value == true  ? true : false,
                  child: CustomDisciplina(trimestre: '2º TRIM',color: Colors.blueGrey,),
                ),
                Visibility(
                  visible: !controller.terceiroTrim.value  ? true : false,
                  child: SizedBox(width: Get.width * .15,)),
                Visibility(
                  visible: controller.terceiroTrim.value == true  ? true : false,
                  child: CustomDisciplina(trimestre: '3º TRIM', color: Colors.amber,),
                ),
                Expanded(
                  child: CustomDisciplina(trimestre: 'MÉDIA',color: const Color(0XFFD9EF51),),
                ),
              ],
            ),
          ],
        ),),
    );
  }
}

