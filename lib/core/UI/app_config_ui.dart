
import 'package:flutter/material.dart';

class AppConfigUI {

  AppConfigUI._();

  static const MaterialColor _primarySwatch = MaterialColor(0XFF0066B0,{
    50: Color(0XFF0066b0),
    100: Color(0XFF005c9e),
    200: Color(0XFF00528d),
    300: Color(0XFF00477b),
    400: Color(0XFF003d6a),
    500: Color(0XFF002946),
    600: Color(0XFF001f35),
    700: Color(0XFF001423),
    800: Color(0XFF000a12),
    900: Color(0XFF000000),

  });

  // ignore: prefer_const_constructors
  static final TextStyle styleText = TextStyle(
    color: Colors.amber,
    fontFamily: 'OpenSans',
            fontSize: 40,
            fontWeight: FontWeight.bold,
  );

  static InputDecoration createIconInputDecoration(String text, IconData icon){
    return InputDecoration(
                            focusedBorder: const UnderlineInputBorder(
                          borderSide:  BorderSide(color: Colors.green),
                          ),
                            enabledBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.cyan)),
                            fillColor: Colors.white,
                            filled: true,
                            // ignore: unnecessary_new
                            icon: new Icon(icon, color: Colors.green),
                            hintText: text);
  }

  static final Container containerDecoration = Container(          
          decoration: BoxDecoration(  
           color: Colors.blueAccent,
           border: Border.all(
             color: Colors.black,
             width: 2.0,
           ),
           borderRadius: BorderRadius.circular(10.0),
           gradient: const LinearGradient(
             colors: [
              Colors.yellow,
              Colors.blueAccent
             ]
           ),),);

  static final ThemeData theme = ThemeData(
    primarySwatch: _primarySwatch,
    primaryColor: const Color(0XFF0066B0),
    primaryColorLight: const Color(0XFF219FFF),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      labelStyle: TextStyle(color: Colors.black),
    ),    
    textTheme: ThemeData.light().textTheme.copyWith(
          caption: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 40,
            fontWeight: FontWeight.bold,),
          headline6: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      )
    ),
  );
  
}