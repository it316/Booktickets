import 'package:flutter/material.dart';
import 'package:projey01/utlis/app_layout.dart';
import 'package:projey01/utlis/app_tysles.dart';
import 'package:projey01/widgets/column_layout.dart';
import 'package:projey01/widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Styles.bgColor,
      body:ListView (
        padding :EdgeInsets.symmetric(horizontal:AppLayout.getHeight(20),vertical:  AppLayout.getHeight(20)),
        children: [
          SizedBox(height: 40,),
          Row (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width :AppLayout.getHeight(86),
                decoration:BoxDecoration (
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage (
                    image: AssetImage(
                      '/Users/nguyenvanphong/development/projey01/assets/images/img_1.jpeg'
                      ),
                  ), 
                ) ,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text ('Book Ticket',style: Styles.headLineSyle,),
                  SizedBox(height: 2,),
                  Text ('HaNoi',style: TextStyle(
                    fontSize:14, fontWeight: FontWeight.w500,color: Colors.grey.shade500
                  ),),
                  SizedBox(height: 8,),
                  Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color (0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal:AppLayout.getHeight(3),vertical: AppLayout.getHeight(3), ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration (
                            shape: BoxShape.circle,
                            color: Color (0xFFFEF4F3),
                          ), 
                          child: Icon(Icons.shield_sharp,color: Colors.blue, size: 15,
                          ),
                        ),
                        Text ('Premium status',style :TextStyle (
                          color: Color(0xFF526799),fontWeight :FontWeight.w600,
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
               Column( 
                    children: [
                      InkWell(
                        onTap:(){
                          print ('you are tapped');
                        },
                        child: Text (
                          'Edit',
                          style: Styles.textStyle.copyWith(color:Styles.primaryColor,fontWeight:FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
            ],
          ),
          SizedBox(height: 40,),
          Divider(
            color: Colors.grey.shade300,
         
          ),
           Stack (
            children: [
              Container(
                height:AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),

                ),
              ),
              Positioned(
                right:-45,
                top:-40,
                child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration (
                  color: Colors.transparent,
                  shape: BoxShape.circle ,
                  border: Border.all(width: 18,color:Color (0xFF264CD2))
                ),
              ),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(20)),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon (Icons.lightbulb_circle_rounded,color: Styles.primaryColor,size: 30),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 7,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'v got a new award',
                          style: Styles.headLineSyle2.copyWith(
                            fontWeight: FontWeight.bold,color: Colors.white,
                          ),
                        ),
                        Text(
                          'You have 95 flight in a year',
                          style: Styles.headLineSyle2.copyWith(
                            fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text ('Accumulatedmiles',
          style: Styles.headLineSyle2,
          ),
          SizedBox(height: 15,),
          Container(
            padding :EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
              color : Styles.bgColor,
              boxShadow: [
                BoxShadow (
                color: Colors.grey.shade200,
                blurRadius: 1,
                spreadRadius: 1,
              ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 15,),
                Text (
                  '19288',
                  style: TextStyle (
                    fontSize: 45,color:Styles.textColor,fontWeight :FontWeight.w600
                  ),
                ),
              
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text (
                      'Miles accrued',style:Styles.headLineSyle4.copyWith(fontSize:16),
                    ),
                    Text (
                      '11 June 2023',style:Styles.headLineSyle4.copyWith(fontSize:16),
                    ),
                  ],
                ),
                Divider(color: Colors.grey.shade300),
                SizedBox(height: 4,),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    AppColumnLayout(fristText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(fristText: 'Ariline CO', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false)
                  ],
                ),
                SizedBox(height: 12,),
                AppLayoutBuilderWidget(section: 12,isColor: false,),
                SizedBox(height: 12,),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(fristText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(fristText: 'McDoanal\s', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false)
                  ],
                ),
                SizedBox(height: 12,),
                AppLayoutBuilderWidget(section: 12,isColor: false,),
                SizedBox(height: 12,),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(fristText: '52 340', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(fristText: 'BDbestech\s', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: false)
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Text (
              'How to get more miles',
              style: Styles.textStyle.copyWith(
                color :Styles.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      )
    );
  }
}