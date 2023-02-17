
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbook_flutter/myutils/app_layout.dart';
import 'package:ticketbook_flutter/myutils/mystyles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic>hotel;
  const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=Applayout.getSize(context);
    return Container(
      width: size.width*0.6,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyStyles.primaryColor,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
          )
        ]
      ),
      margin: const EdgeInsets.only(right: 20,top: 5),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: MyStyles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              )
            ),
          ),
          const Gap(15),
          Text(
            "${hotel['place']}",style: MyStyles.headingstyle1.copyWith(fontWeight: FontWeight.w500,color: Colors.amber),
          ),
          const Gap(5),
          Text(
            "${hotel['destination']}",style: MyStyles.headingstyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white),
          ),
          const Gap(10),
          Text(
            "\$${hotel['price']}/night",style: MyStyles.headingstyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white),
          ),
        ],
      ),
    );
  }
}
