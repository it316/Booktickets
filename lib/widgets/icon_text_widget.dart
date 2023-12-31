import 'package:flutter/material.dart';
import 'package:projey01/utlis/app_layout.dart';
import 'package:projey01/utlis/app_tysles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon ,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12),horizontal: AppLayout.getHeight(12)),
            decoration: BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10),)
            ),
            child: Row(
              children: [
                 Icon (icon,color:const Color(0xFFBFC2DF),),
                SizedBox(width:10),
                Text (text,style: Styles.textStyle),
              ],
            ),
          );
          
  }
}