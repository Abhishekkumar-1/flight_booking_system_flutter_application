//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbook_flutter/myutils/app_layout.dart';
import 'package:ticketbook_flutter/myutils/column_layout.dart';
import 'package:ticketbook_flutter/myutils/flight_info_list.dart';
import 'package:ticketbook_flutter/myutils/options_containers.dart';
import 'package:ticketbook_flutter/screens/ticket_view.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../myutils/mystyles.dart';

class AppTicketScreen extends StatelessWidget {
  const AppTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=Applayout.getSize(context);
    return Scaffold(
      backgroundColor: MyStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getwidth(20),vertical: Applayout.getheight(60)),
            children: [
              Text("Tickets",style:MyStyles.headingstyle1.copyWith(fontSize: 24)),
              Gap(Applayout.getheight(20)),
              const OptionsContainer(text1: "Upcoming", text2: "Previous"),
              Gap(Applayout.getheight(20)),
              Container(
                padding: EdgeInsets.only(left: Applayout.getwidth(15)),
                child: TicketView(tickets: ticketList[0],isColor: true,),
              ),
              Container(
                //width: size.width*0.85,
                padding: EdgeInsets.symmetric(horizontal: Applayout.getwidth(15),vertical: Applayout.getheight(7)),
                margin: EdgeInsets.only(right: Applayout.getwidth(20),left: Applayout.getwidth(15)),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child:
                          Expanded(child: Stack(
                            children: [
                              SizedBox(height:24.0,
                                  child: LayoutBuilder(
                                    builder: (BuildContext context, BoxConstraints constraint) {
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: List.generate((constraint.constrainWidth()/14).floor(), (index) => const Text('-',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 20),)),
                                      );
                                    },
                                  )
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),
                    Gap(Applayout.getheight(12)),
                    // detail row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(first_text: "Abhishek Kumar", second_text: "Passenger", alignment: CrossAxisAlignment.start),
                        ColumnLayout(first_text: "5722 123456", second_text: "Passport", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(Applayout.getheight(12)),
                    // line row
                    Row(
                      children: [
                        Container(
                          child:
                          Expanded(child: Stack(
                            children: [
                              SizedBox(height:24.0,
                                  child: LayoutBuilder(
                                    builder: (BuildContext context, BoxConstraints constraint) {
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: List.generate((constraint.constrainWidth()/14).floor(), (index) => const Text('-',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 20),)),
                                      );
                                    },
                                  )
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),
                    Gap(Applayout.getheight(12)),
                    // detail row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(first_text: "012938 123 4756", second_text: "E-Ticket Number", alignment: CrossAxisAlignment.start),
                        ColumnLayout(first_text: "P7DH7S", second_text: "Booking code", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(Applayout.getheight(12)),
                    Row(
                      children: [
                        Container(
                          child:
                          Expanded(child: Stack(
                            children: [
                              SizedBox(height:24.0,
                                  child: LayoutBuilder(
                                    builder: (BuildContext context, BoxConstraints constraint) {
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: List.generate((constraint.constrainWidth()/14).floor(), (index) => const Text('-',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 20),)),
                                      );
                                    },
                                  )
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),
                    Gap(Applayout.getheight(12)),
                    // detail row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(first_text: "VISA***2462", second_text: "Payment Method", alignment: CrossAxisAlignment.start),
                        ColumnLayout(first_text: "\$99", second_text: "Price", alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    Gap(Applayout.getheight(12)),
                    Row(
                      children: [
                        Container(
                          child:
                          Expanded(child: Stack(
                            children: [
                              SizedBox(height:24.0,
                                  child: LayoutBuilder(
                                    builder: (BuildContext context, BoxConstraints constraint) {
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: List.generate((constraint.constrainWidth()/14).floor(), (index) => const Text('-',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 20),)),
                                      );
                                    },
                                  )
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: Applayout.getheight(3.0),),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Applayout.getheight(12)),bottomRight:Radius.circular(Applayout.getheight(12))),
                ),
                margin: EdgeInsets.only(left: Applayout.getwidth(16),right: Applayout.getwidth(16)),
                padding: EdgeInsets.only(top: Applayout.getheight(15),bottom: Applayout.getwidth(15)),
                child: Container(
                  padding:EdgeInsets.symmetric(horizontal: Applayout.getheight(15)),
                  child:ClipRRect(
                    borderRadius:BorderRadius.circular(Applayout.getheight(15)),
                    child:
                    BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: MyStyles.textColor,
                      width: double.infinity,
                      height:70,
                    ),
                  ),),
              ),
              Gap(Applayout.getheight(21)),
              Container(
                height: Applayout.getheight(165),
                margin: EdgeInsets.only(left: Applayout.getwidth(18)),
                child:TicketView(tickets: ticketList[0],)
              ),
            ],
          ),
          Positioned(
            top: Applayout.getheight(295),left: Applayout.getwidth(19),
            child: Container(
              padding: EdgeInsets.all(Applayout.getheight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black,width: 2),
              ),
              child: const CircleAvatar(maxRadius: 4,backgroundColor: Colors.black,),
            ),
          ),
          Positioned(
            top: Applayout.getheight(295),right: Applayout.getwidth(22),
            child: Container(
              padding: EdgeInsets.all(Applayout.getheight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black,width: 2),
              ),
              child: const CircleAvatar(maxRadius: 4,backgroundColor: Colors.black,),
            ),
          )
        ],
      ),
    );
  }
}
