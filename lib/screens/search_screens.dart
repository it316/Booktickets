import 'package:flutter/material.dart';
import 'package:projey01/utlis/app_layout.dart';
import 'package:projey01/utlis/app_tysles.dart';
import 'package:projey01/widgets/double_text_widget.dart';
import 'package:projey01/widgets/icon_text_widget.dart';
import 'package:projey01/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView (
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox (height:60),
          Text ('What are\nyou looking for',style:Styles.headLineSyle.copyWith(fontSize: AppLayout.getWidth(35)),),
          SizedBox (height:20),
          const AppTicketTabs(fristTab: "Airline Tickets", secondTab: "Hotels"),
          SizedBox(height:25),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          SizedBox(height:15),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          SizedBox(height:25),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(18),horizontal: AppLayout.getHeight(18)),
            decoration: BoxDecoration (
              color: Color (0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10),)
            ),
            child:Center(
                  child: Text ('Find tickets',style: Styles.textStyle.copyWith(color: Colors.white)),
            ),
          ),
          SizedBox(height:30),
          const AppDoubleTextWidget(bigText: 'Upcoming flights', smarllText: 'View all'),
          SizedBox(height:15),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(525),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight (20)),
                  boxShadow: [
                    BoxShadow(  
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                    ),
                  ], 
                ),
                child: Column (
                  children: [
                    Container (
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(AppLayout.getHeight (12)),
                        image : const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage ('/Users/nguyenvanphong/development/projey01/assets/images/sit.jpg'), 
                          ),
                      ),
                    ),
                    SizedBox (height:5),
                    Text(
                      'Sau khi tăng nóng tới 2-3 lần, giá vé máy bay dịp nghỉ lễ Quốc Khánh 2/9 năm nay đã giảm, các hãng hàng không chưa đề xuất tăng chuyến.',
                      style:Styles.headLineSyle2,
              ),
                  ],
                ),
              ),
              Column(
                children: [
                Stack(
                  children: [
                      Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(345),
                    decoration: BoxDecoration (
                      color :Color (0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10),horizontal: AppLayout.getHeight(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text ('Giá vé\n máy bay hè 2023 rẻ nhất trong 6 năm gần đây',
                        style: Styles.headLineSyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                        SizedBox(height:30),
                        Text(
                          'Cụ thể, vé Hà Nội - Phú Quốc ngày đi 1/9, ngày về 5/9 của Vietnam Airlines là 4.166.000 đồng, giảm 1,6 triệu đồng/vé ',
                          style: Styles.headLineSyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),
                          ),
                      ],
                    ),
                  ),
                  Positioned(
                    right:-50,
                    top: -50,
                    child: Container(
                    padding: EdgeInsets.all (AppLayout.getHeight(30)),
                    decoration :BoxDecoration (
                      shape:BoxShape.circle,
                      border: Border.all(width:18,color:Color(0xFF189999),),
                      color: Colors.transparent
                    ),
                  ),
                    ),
                  ],
                ),
                  SizedBox(height:15),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(160),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color:const  Color(0xFFEC6545),
                  ),
                  child: Column (
                    children: [
                      Text (
                        '7 địa điểm du lịch gần Hà Nội để "đổi gió" dịp lễ 2/9',
                        style: Styles.headLineSyle2.copyWith(color: Colors.white,fontWeight:FontWeight.bold),textAlign: TextAlign.center,
                      ),
                      RichText (
                        text: const TextSpan (
                          children: [
                            TextSpan (
                              text: '✈️',
                              style: TextStyle (fontSize:25)
                            ),
                            
                          ]
                        )
                      )
                    ],
                  ),
                ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}