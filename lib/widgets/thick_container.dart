import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({super.key, required this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container (
      padding : const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // ignore: unnecessary_null_comparison
        border: Border.all(width: 2.5,color :isColor==null? Colors.white: Color(0xFF8ACCF7),)
      ),
    );
  }
}