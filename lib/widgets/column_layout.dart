import 'package:flutter/material.dart';
import 'package:projey01/utlis/app_tysles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String fristText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({super.key, 
  required this.fristText,
  required this.secondText,
  required this.alignment,
  this.isColor});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment : alignment,
      //style :  isColor== null? Styles.headLineSyle3.copyWith(color:Colors.white):Styles.headLineSyle3,),
      children: [
        Text (fristText,
        style :  isColor== null? Styles.headLineSyle3.copyWith(color:Colors.white): Styles.headLineSyle3,),
        SizedBox(height: 5,),
        Text (secondText,
        style :  isColor== null? Styles.headLineSyle4.copyWith(color:Colors.white): Styles.headLineSyle4,),
      ],
    );
  }
}