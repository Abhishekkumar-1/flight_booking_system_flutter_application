import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbook_flutter/myutils/app_layout.dart';
import 'package:ticketbook_flutter/myutils/mystyles.dart';

import '../myutils/column_layout.dart';
import '../myutils/options_containers.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Applayout.getwidth(20),vertical: Applayout.getheight(20)),
        children: [
          Gap(Applayout.getheight(30)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Applayout.getheight(86),
                width: Applayout.getwidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Applayout.getheight(10)),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img_1.png'),
                  )
                ),
              ),
              Gap(Applayout.getheight(15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Book Tickets',style: MyStyles.headingstyle0,),
                  Text('New-Delhi',style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500,color: Colors.grey.shade500),),
                  Gap(Applayout.getheight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Applayout.getheight(3),vertical: Applayout.getheight(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Applayout.getheight(100)),color: const Color(0xFFFEF4F3),
                    ),
                    child:Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(Applayout.getheight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,size: 18,),
                        ),
                        Gap((Applayout.getwidth(3.0))),
                        const Text("Premium Status",style: TextStyle(color: Color(0xFF526799),fontWeight: FontWeight.bold,backgroundColor: Colors.white),),
                        Gap((Applayout.getwidth(3.0))),

                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children:[
                  InkWell(
                    onTap:(){
                      print('you are tapped');
                    },
                    child:
                      Text('Edit',style: MyStyles.textStyle0.copyWith(color: Colors.grey.shade700,fontWeight: FontWeight.w400),),
                  )
                ],
              )
            ],
          ),
          Gap(Applayout.getheight(10)),
          Divider(color: Colors.grey.shade400,),
          Stack(

          ),
          Column(
            children: [
              Column(
                children: [
                  Text('Accumulated miles',style: MyStyles.headingstyle1,)
                ],
              ),
              Gap(Applayout.getheight(17)),
              Column(
                children: const[
                  Center(child: Text('208291',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight:FontWeight.w500),),),
                ],
              ),
              Gap(Applayout.getheight(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Miles accrued',style: MyStyles.headingstyle2.copyWith(color: Colors.black,fontSize:20),),
                  Text('12 feb 2021',style: MyStyles.headingstyle2.copyWith(color: Colors.black,fontSize: 20),),
                ],
              ),
              Gap(Applayout.getheight(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                   ColumnLayout(first_text: '23051', second_text: 'Miles', alignment: CrossAxisAlignment.start),
                   ColumnLayout(first_text: 'Air India', second_text: 'Deliver from', alignment: CrossAxisAlignment.end),
                ],
              ),
              Gap(Applayout.getheight(14)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                   ColumnLayout(first_text: '1999', second_text: 'Miles', alignment: CrossAxisAlignment.start),
                   ColumnLayout(first_text: 'Indigo', second_text: 'Deliver from', alignment: CrossAxisAlignment.end),
                ],
              ),
              Gap(Applayout.getheight(14)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                   ColumnLayout(first_text: '2021', second_text: 'Miles', alignment: CrossAxisAlignment.start),
                   ColumnLayout(first_text: 'Spice Jet', second_text: 'Deliver from', alignment: CrossAxisAlignment.end),
                ],
              ),
              Gap(Applayout.getheight(22)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Get more miles',style: MyStyles.headingstyle2.copyWith(color: Colors.blue),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
