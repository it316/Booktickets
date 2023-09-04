import 'package:flutter/material.dart';
import 'package:projey01/screens/ticket_view.dart';
import 'package:projey01/utlis/app_infor_list.dart';
import 'package:projey01/utlis/app_layout.dart';
import 'package:projey01/utlis/app_tysles.dart';
import 'package:projey01/widgets/column_layout.dart';
import 'package:projey01/widgets/ticket_tabs.dart';
import 'package:projey01/widgets/layout_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack (
        children: [
          ListView (
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getHeight(15),),
            children: [
              SizedBox(height: 40,),
              Text ('Tickets',
              style: Styles.headLineSyle,),
              SizedBox(height: 20,),
              const AppTicketTabs(fristTab: 'Upcoming', secondTab: 'Previous'),
              SizedBox(height:20,),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket : ticketList [0],isColor: true),
              ),
              Container(
                color : Colors.white,
                padding: EdgeInsets.symmetric(horizontal:15,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal:15),
                child:  Column(
                  children:[
                    Row (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       AppColumnLayout(fristText: 'Flutter DB', secondText: 'Passenger',alignment: CrossAxisAlignment .start,isColor:false),
                       AppColumnLayout(fristText: '5521 36849', secondText: 'Passport',alignment: CrossAxisAlignment .end,isColor:false),
                      ],
                      ),
                      SizedBox(height:20,),
                      const AppLayoutBuilderWidget(section: 15,isColor :false,width : 5),
                      SizedBox(height:20,),
                      Row (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       AppColumnLayout(fristText: '267838 18274478', secondText: 'Number of E-ticket',alignment: CrossAxisAlignment .start,isColor:false),
                       AppColumnLayout(fristText: 'B2SG28', secondText: 'Booking code',alignment: CrossAxisAlignment .end,isColor:false),
                      ],
                      ),
                      SizedBox(height:20,),
                       AppLayoutBuilderWidget(section: 15,isColor :false,width : 5),
                      SizedBox(height:20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row (
                                children: [
                                  Image.asset('/Users/nguyenvanphong/development/projey01/assets/images/visa.svg.png',scale: 45),
                                  Text ('*** 2468',style: Styles.headLineSyle3,),
                                ],
                              ),
                              SizedBox(height:10,),
                               Text ('Payment menthod', style: Styles.headLineSyle4,),
                            ],
                          ),
                          AppColumnLayout(fristText: '\$249.99', secondText: 'Price',alignment: CrossAxisAlignment .end,isColor:false),
                        ],
                      ),
                     
                  ],
                ),
              ),
              /*
              bar code
              */
              Container(
                
                decoration:  BoxDecoration (
                    color: Colors.white,
                  borderRadius: BorderRadius.only (
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(21))
                    ),
                ),
                margin: EdgeInsets.only(left:AppLayout.getHeight(15),right:AppLayout.getHeight(15)),
                padding: EdgeInsets.only(top: AppLayout.getHeight(20),bottom:AppLayout.getHeight(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'http//github.com/matinovovo',
                      drawText: false,
                      color : Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              SizedBox(height:20,),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket : ticketList [0],),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration (
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width:2 ),
              ),
              child: CircleAvatar (
                maxRadius: 4 ,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration (
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width:2 ),
              ),
              child: CircleAvatar (
                maxRadius: 4 ,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      )
    );
  }
}