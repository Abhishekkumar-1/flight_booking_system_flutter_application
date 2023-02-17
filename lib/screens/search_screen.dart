import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../myutils/app_layout.dart';
import '../myutils/icon_text.dart';
import '../myutils/mystyles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=Applayout.getSize(context);
    return Scaffold(
      backgroundColor: MyStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: Applayout.getheight(20),horizontal: Applayout.getwidth(20)),
        children: [
          Gap(Applayout.getheight(40)),
          Text("What are\nyou looking for?",style: MyStyles.headingstyle0.copyWith(fontSize: Applayout.getwidth(35)),),
          Gap(Applayout.getheight(25)),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getheight(20)),
              color: const Color(0xFFF4F6FD),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: Applayout.getheight(15)),
                  width: size.width*0.44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Applayout.getheight(20)),
                    color: Colors.white,
                  ),
                  child: Center(child: Text("Airline Flights",style: MyStyles.headingstyle2.copyWith(color: Colors.grey.shade700,fontSize: 19,letterSpacing: 0),),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: Applayout.getheight(15)),
                  width: size.width*0.44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Applayout.getheight(20)),
                    //color: Colors.lightBlue.shade100,
                  ),
                  child: Center(child: Text("Hotels",style: MyStyles.headingstyle2.copyWith(color: Colors.grey.shade700,fontSize: 19,letterSpacing: 0),),),
                ),
              ],
            ),
          ),
          Gap(Applayout.getheight(25)),
          const IconText(icon0: Icons.flight_takeoff, textdata: "departure"),
          Gap(Applayout.getheight(25)),
          const IconText(icon0: Icons.flight_land, textdata: "Arrival"),
          Gap(Applayout.getheight(25)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming flights",style: MyStyles.headingstyle1,),
                  Text('View all',style: MyStyles.textStyle0.copyWith(color: primary,fontSize: 16.0),),
                ],
              )
            ],
          ),
          Gap(Applayout.getheight(25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(
                height: Applayout.getheight(390),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(vertical: Applayout.getheight(15),horizontal: Applayout.getwidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: Applayout.getheight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Applayout.getheight(20)),
                        color: const Color(0xFFF4F6FD),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(Applayout.getheight(20)),
                    Text("Discounts till 40% on this flight ticket booking. Don't miss out this chance",style: MyStyles.textStyle0.copyWith(height:1.0,fontSize:19),),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: Applayout.getheight(200),
                        width: size.width*0.42,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(Applayout.getheight(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 1,
                                  spreadRadius: 1
                              )
                            ]
                        ),
                        child:Column(
                          children:[
                            Gap(Applayout.getheight(15)),
                            Container(
                              padding: EdgeInsets.only(right:Applayout.getwidth(30)),
                              child: Text("Discount\nfor survey",style: MyStyles.headingstyle1.copyWith(color: Colors.white,fontSize:23)),
                            ),
                            Gap(Applayout.getheight(12)),
                            Text("Take the survey\nabout our services\nand get discounts",style:MyStyles.headingstyle3.copyWith(color: Colors.white,fontSize:19)),
                          ]
                        ),
                      ),
                      Positioned(top:-40,right:-45,
                        child: Container(
                        padding: EdgeInsets.all(Applayout.getheight(30)),
                        decoration: BoxDecoration(
                          border: Border.all(width:Applayout.getheight(18),color: const Color(0xFF189999)),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                      ),),
                    ],
                  ),
                  Gap(Applayout.getheight(10)),
                  Container(
                        height: 170,
                        padding: EdgeInsets.symmetric(vertical: Applayout.getheight(12),horizontal: Applayout.getwidth(12)),
                        width: size.width*0.42,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(Applayout.getheight(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 1,
                                  spreadRadius: 1,
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Gap(Applayout.getheight(12)),
                            Center(child: Text("Get daily discount offers on pre booking",style: MyStyles.textStyle0.copyWith(height: 1.0,fontSize: 19)),),
                            // RichText(
                            //   text:const TextSpan(
                            //     children:[
                            //       TextSpan(
                            //         text:'',
                            //       )
                            //
                            //     ]
                            //   )
                            // ),
                          ],
                        ),
                      ),
                ],
              ),
            ],
          ),

          //Text("Hello")

        ],
      ),
    );
  }
}
