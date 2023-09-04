import 'package:flutter/material.dart';
import 'package:projey01/utlis/app_tysles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smarllText;

  const AppDoubleTextWidget({super.key, required this.bigText, required this.smarllText});

  @override
  Widget build(BuildContext context) {
    return  Row (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text (bigText,style:Styles.headLineSyle2),
            InkWell(
                onTap:() {
                  print ('You are tapped');
                },
                child: Text (smarllText,style:Styles.textStyle.copyWith(color :Styles.primaryColor),),)
        ],
       );
  }
}