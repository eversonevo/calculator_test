
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  RxBool primeiroTrim = true.obs;
  RxBool segundoTrim = false.obs;
  RxBool terceiroTrim = false.obs;

  RxString armazenar = ''.obs;
  List<TextEditingController> editingController1T = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  List<String> disciplinas = [
    'ARTE',
    'BIOLOGIA',
    'EDUCACAO FISICA',
    'FILOSOFIA',
    'FISICA',
    'GEOGRAFIA',
    'HISTORIA',
    'LINGUA INGLESA',
    'LINGUA PORTUGUESA',
    'MATEMATICA',
    'QUIMICA',
    'EDUCACAO FINANCEIRA',
    'PENSAMENTO COMPUTACIONAL',
    'PROJETO DE VIDA'
  ];
  /*List<TextEditingController> editingController2T = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  List<TextEditingController> editingController3T = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];*/

  void habilitarNotas1Trim(){
    armazenar.value = '1TRIM';
    print('1 trim');
  }
  
  void habilitarNotas2Trim(){
    armazenar.value = '2TRIM';
    print('2 trim');
  }

  void habilitarNotas3Trim(){
    armazenar.value = '3TRIM';
    print('3 trim');
  }

}
 
 
 
 /*
  List<String> clique = [
    '7','8','9','/','4','5','6','X','1','2','3','-','0','.','+','='
    ];

    int a = 0;
    int va = 0;
    RxString textoTela = '0'.obs;
    List<String> expressao = [];
    List<double> valores = [];
    List<double> valores_r = [];
    List<String> operacoes_r = [];
    List<String> operacoes = [];
    String numeroFormado = '';
    double resultado = 0.0;
    bool primeiraPassagem = true;
    int valorPrimeiroSinal = 0;

    int indexTeste = 0;

    void calculator(int index){
    if (textoTela.value == '0'){
       textoTela.value = '';
       //textList.add(clique[index].toString());
       textoTela.value = clique[index];
       expressao.add(clique[index]);
       //geraValor();
    } else if (clique[index] == '='){
      expressao.add(clique[index]);
      print('ex '+expressao.toString());
      print('calcular');
      calcular();
    }
    else {
      textoTela.value = textoTela.value + clique[index];
      expressao.add(clique[index]);
    }
    }

    void calcular(){

      for (int ex = 0; ex < expressao.length; ex++){
        print('ex '+ex.toString());
        if ((expressao[ex] == '+') || 
            (expressao[ex] == '-') || 
            (expressao[ex] == '=') ||
            (expressao[ex] == 'X') ||
            (expressao[ex] == '/')){
          for (va; va < ex;va++){
            numeroFormado = numeroFormado+expressao[va].toString();
          }
          valores.add(double.parse(numeroFormado));
          numeroFormado = '';
          operacoes.add(expressao[ex]);
          va=ex+1;
          print(operacoes.toString());
          print(valores.toString());
        }
      }
      formarResultado();
    }

    //  0 1 2 3 4 5 6 7 8 9  
    //  1,0,+,5,-,2,0,+,2,0

    void formarNumero(int index){
      String montaValor = '';
      indexTeste = index-1;
      for (indexTeste; indexTeste >= 0;indexTeste--){
        if ((expressao[indexTeste] == '+') || (indexTeste == 0)){
          for (int x = indexTeste = indexTeste; x < index; x++){
            montaValor = montaValor + expressao[x].toString();
          }
        }else if ((expressao[indexTeste] == '-') || (indexTeste == 0)){
          for (int y = indexTeste; y < index; y++){
            montaValor = montaValor + expressao[y].toString();
          }
        }
      }
      valores_r.add(double.parse(montaValor));
      print(valores_r.toString());
    }

    void formarResultado(){


      
/*

      if ((operacoes.contains('X')) || (operacoes.contains('/'))){
          for (int i=0; i < operacoes.length;i++){
            if (operacoes[i] == 'X'){
              if (i == 0){
                resultado = valores[i] * valores[i+1];
              }else{
                if (primeiraPassagem){
                  resultado = valores[i] * valores[i+1];
                  primeiraPassagem = false;
                }else {
                  resultado = resultado * valores[i+1];
                }
                
              }
            }
            if (operacoes[i] == '/'){
              if (i == 0){
                resultado = valores[i] / valores[i+1];
              }else{
                if (primeiraPassagem){
                  resultado = valores[i] / valores[i+1];    
                  primeiraPassagem = false;
                }else{
                  resultado = resultado / valores[i+1];
                }
              }
            }
          }
          } 
          if (operacoes.contains('+')) {
            for (int i=0; i < operacoes.length;i++){
            if (operacoes[i] == '+'){
              if (i == 0){
                resultado = valores[i] + valores[i+1];
              }else{
                if (primeiraPassagem){
                  resultado = valores[i] + valores[i+1];  
                  primeiraPassagem = false;
                }else{
                  resultado = resultado + valores[i+1];
                }
                
              }
            }
          }
      } 
      if (operacoes.contains('-')){
        for (int i=0; i < operacoes.length;i++){
            if (operacoes[i] == '-'){
              if (i == 0){
                resultado = valores[i] - valores[i+1];
              }else{
                if (primeiraPassagem){
                  resultado = valores[i] - valores[i+1];  
                  primeiraPassagem = false;
                }else{
                    resultado = resultado - valores[i+1];
                }
                
              }
            }
          }
      }*/

     /*if ((operacoes.contains('X')) || operacoes.contains('/')){
       for (int i = 0; i < operacoes.length;i++){
        if (operacoes[i] == 'X'){
          if (i == 0){
            if(primeiraPassagem){
                resultado = valores[i] * valores[i+1];
                primeiraPassagem = false;
            }else{
                 resultado = resultado * (valores[i] * valores[i+1]);
            }
            
          }else{
            if (primeiraPassagem){
              resultado = valores[i] * valores[i+1];
              primeiraPassagem = false;
            }else{
               resultado = valores[i-1] * valores[i+1];
            }
          }
        } else if (operacoes[i] == '/'){
          if (i == 0){
            if (primeiraPassagem){
              resultado = valores[i] / valores[i+1];
              primeiraPassagem = false;  
            }else{
              resultado = resultado / (valores[i] / valores[i+1]);
            }
          }else{
            if (primeiraPassagem){
              resultado = valores[i] / valores[i+1];
              primeiraPassagem = false;
            }else{
               resultado = resultado / valores[i+1];
            }
          }
        }
      }
     } 
      if (operacoes.contains('+')){
       for (int i = 0; i < operacoes.length;i++){
         if (operacoes[i] == '+'){
           if (i == 0){
             if (primeiraPassagem){
                resultado = valores[i] + valores[i+1];
                primeiraPassagem = false;
             }else{
                resultado = resultado + (valores[i] + valores[i+1]);
             }
          }else{
            if (primeiraPassagem){
              resultado = valores[i] + valores[i+1];
              primeiraPassagem = false;
            }else{
               resultado = resultado + valores[i+1];
            }
          }
         }
       }
     }
     if (operacoes.contains('-')){       
       for (int i = 0; i < operacoes.length;i++){
         if (operacoes[i] == '-'){
           if (i == 0){
             if(primeiraPassagem){
                resultado = valores[i] - valores[i+1];
                primeiraPassagem = false;
             }else{
               resultado = resultado - (valores[i] - valores[i+1]);
             }
            
          }else{
            if (primeiraPassagem){
              resultado = valores[i] - valores[i+1];
              primeiraPassagem = false;
            }else{
               resultado = resultado - valores[i+1];
            }
          }
         }
       }
     }*/


      /*for(int i = 0;i < valores.length;i++){
        if (i == 0){
          resultado = valores[i];
        }else{
          switch(operacoes[i-1]){
            case '+':
              resultado = resultado + valores[i];
              break;
            case '-':
              resultado = resultado - valores[i];    // FUNCIONANDO MAS CALCULANDO ERRADO
              break;                                 // INTERESSANTE MOSTRAR    
            case '/':
              resultado = resultado / valores[i];
              break;
            case 'X':
              resultado = resultado * valores[i];
              break;
            default:
              print('erroo');
              break;
          }*/

        //}
     // }
      print('resultado= '+resultado.toString());
      textoTela.value = resultado.toString();
    }
}
*/