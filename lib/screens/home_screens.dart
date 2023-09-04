import 'package:flutter/material.dart';
import 'package:projey01/screens/hotels_screens.dart';
import 'package:projey01/screens/ticket_view.dart';
import 'package:projey01/utlis/app_infor_list.dart';
import 'package:projey01/utlis/app_tysles.dart';
import 'package:projey01/widgets/double_text_widget.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView (
        children: [
          Container(
            padding :const EdgeInsets.symmetric(horizontal: 20),
            child : Column(
              children: [
                SizedBox(height: 40),
                Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children :[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          "Xin chào buổi sáng ", style: Styles.headLineSyle3,
                          ),
                          SizedBox(height:5),
                        Text(
                          "Book ticket ",style: Styles.headLineSyle,
                          ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("/Users/nguyenvanphong/development/projey01/assets/images/img_1.jpeg")
                          )
                      ),
                    ),
                  ],
                  ),
                  SizedBox(height:25),
                  Container (
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color :const Color(0xFFF4F6FD),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row (
                    children: [
                      
                      const Icon (Icons.search,color: Color(0xFFBFC205)),
                      Text (
                        "Search",
                        style: Styles.headLineSyle4
                      ),
                    ],
                  ),
                  ),
                  SizedBox(height:40),
                 const AppDoubleTextWidget(bigText: 'Upcoming flights', smarllText: 'View all')

              ],
            )
          ),
          SizedBox(height:15),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left:16),
            child: Row (
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
              ),
          ),
          SizedBox(height: 15,),
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: 'Hotels', smarllText: 'View all')
          ),
          SizedBox(height: 15,),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:  const EdgeInsets.only(left:16),
            child:  Row ( 
              children:  hotelList.map((singleHotel) => HotelsScreen(hotel: singleHotel)).toList(),
              ),
            ),
        ],
      ),
    );
  }
}