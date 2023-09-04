import 'package:flutter/material.dart';
import 'package:projey01/utlis/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String fristTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.fristTab,required this.secondTab });

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: Color (0xFFF4F6F0),
              ),
              child:  Row ( 
                children: [
                //airline tickets 
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.white,
                  ),
                child: Center (child: Text (fristTab),),
                ),
                // hotels
                Container(
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.transparent,
                  ),
                child: Center (child: Text (secondTab),),
                )
              ],
            ),
          ),
          );
  }
}