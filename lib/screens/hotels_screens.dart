import 'package:flutter/material.dart';
import 'package:projey01/utlis/app_layout.dart';
import 'package:projey01/utlis/app_tysles.dart';

class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic>hotel;
  const HotelsScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print ('Hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container (
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right:17,top:5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('/Users/nguyenvanphong/development/projey01/assets/images/${hotel['image']}')
                //NetworkImage('https://cdn3.ivivu.com/2014/01/SUPER-DELUXE2.jpg'),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            hotel['place'],
            style: Styles.headLineSyle2.copyWith(color:Styles.kakiColor),

          ),
          Text(
            hotel['destianation'],
            style: Styles.headLineSyle3.copyWith(color:Colors.white),
            
          ),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headLineSyle.copyWith(color:Styles.kakiColor),
            
          ),
          ]
        ),
    );
  }
}