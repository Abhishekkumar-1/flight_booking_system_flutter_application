// import 'package:flutter/cupertino.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbook_flutter/myutils/flight_info_list.dart';
import 'package:ticketbook_flutter/myutils/hotel_info_list.dart';
import 'package:ticketbook_flutter/myutils/mystyles.dart';
import 'package:ticketbook_flutter/screens/hotel_screen.dart';
import 'package:ticketbook_flutter/screens/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15,right: 15.0),
            child: Column(
              children: [
                const Gap(15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                           'Good Day',style: MyStyles.headingstyle2,
                         ),
                         const Gap(5.0),
                         Text(
                             'Book Tickets',style: MyStyles.headingstyle0,
                         ),
                      ],
                    ),
                    Container(
                      width: 70,height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.png")
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
                  child: Row(
                    children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Colors.amber,),
                        Gap(5.0),
                        Text('Search',style: MyStyles.headingstyle3,),
                    ],
                  ),
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming Flights',style: MyStyles.headingstyle1,),
                    InkWell(
                      onTap: (){
                        print('you smashed!');
                      },
                      child: Text(
                        'View all',style: MyStyles.textStyle0.copyWith(color: primary,fontSize: 16.0),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Gap(15.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: ticketList.map((anytickets) => TicketView(tickets:anytickets)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.only(left: 15,right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels',style: MyStyles.headingstyle1,),
                InkWell(
                onTap:(){
                  print('You tapped!');
                },
                child: Text('View all',style: MyStyles.headingstyle3.copyWith(color: primary,fontSize: 16.0),),
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: hotelList.map((anyhotel) => HotelScreen(hotel:anyhotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
