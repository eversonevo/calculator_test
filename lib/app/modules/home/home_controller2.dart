import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController2 extends GetxController {

  List<String> clique = [
    '7','8','9','/','4','5','6','X','1','2','3','-','0','.','+','='
    ];

    int a = 0;
    int i = 0;
    RxString textWidget = '0'.obs;
    RxList<String> textList = <String>[].obs;
    List<double> valores = [];
    List<String> listSinais = [];
    RxList<String> listaAcima = <String>[].obs;
    RxList<String> textWidget2 = <String>[].obs;


  void calculator(int index){
    if (textWidget.value == '0'){
       textWidget.value = '';
       textList.add(clique[index].toString());
       //textWidget.value = textList.toString();
       geraValor();
    }
    else {
      switch(clique[index].toString()){
        case '+':
          textList.add(clique[index].toString());
          carregaListaDouble();
          print('Mais');
          break;
        case '-':
          print('Menos');
          break;
        case '/':
          print('Divisão');
          break;
        case 'X':
          print('Multiplicação');
          break;
        case '=':
          textList.add(clique[index].toString());
          calcula();
          print('Igual');
          break;
        default:
          textList.add(clique[index].toString());
          geraValor();
        //textWidget.value = textWidget.value+(textList.length-1).toString();

      }
        
    }
  }

  void carregaListaDouble(){
    
    String value = '';
    for (i;i < textList.length; i++){
      if ((textList[i] == '+') || (textList[i] == '=')){
        for (a;a < i;a++){
          value = value+textList[a].toString();
        }
        a = i+1;
        i = textList.length+1;
        print ('aaa: '+value.toString());
        var db = double.parse(value);
        listSinais.add('+');
        valores.add(db);
        db +=10;
        print('soma: '+db.toString());
      }
    }


  }

  void calcula(){
    carregaListaDouble();
    //print(valores.length);
    //var soma = valores[0]+valores[1];
    //textWidget.value = soma.toString();

    double somaX = 0.0;
    int contadorInicio = 0;
    int contadorFim = 1;
    var te = listSinais.length-1;
    print('te'+te.toString());
    for(int x = 0;x < valores.length;x++){
      if (x == 0)
        somaX = valores[x];

      if ((x/2 == 1) || x == 1) {
         switch(listSinais[contadorInicio].toString()){
          case '+':
          somaX = somaX+valores[x];
          contadorInicio +=1;
          print('Mais');
          break;
        case '-':
          print('Menos');
          break;
        case '/':
          print('Divisão');
          break;
        case 'X':
          print('Multiplicação');
          break;
        case '=':
          //textList.add(clique[index].toString());
          //calcula();
          print('Igual');
          break;
      }
      }

      
      
      
      
      /*while(contadorInicio < te){
        // numero par
        if((valores[x]/2 == 0) || valores[x] == 0){

        }

      } */     
      /*while (contadorInicio < valores.length){
        somaX = somaX+valores[contadorInicio];
        contadorInicio +=1;
      }
      contadorInicio = contadorFim;
      contadorFim += 1;*/
    }

    textWidget.value = somaX.toString();
    print('soma x: '+somaX.toString());
  }

  void geraValor(){
    textWidget.value = '';
    for(int i=0;i < textList.length; i++){
      textWidget.value = textWidget.value+textList[i].toString();  
    }
  }

  void accessPassenger() {
    Get.toNamed('/passenger');
  }

  void accessPayments() {
    Get.toNamed('/payments');
  }

  void accessReports() {
    Get.toNamed('/reports');
  }

  void accessUser() {
    Get.toNamed('/user');
  }
}
