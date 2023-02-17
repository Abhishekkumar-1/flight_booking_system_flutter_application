import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'app_layout.dart';
import 'mystyles.dart';

class IconText extends StatelessWidget {
  final IconData icon0; final String textdata;
  const IconText({Key? key,required this.icon0,required this.textdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Applayout.getheight(15),horizontal: Applayout.getheight(15)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Applayout.getheight(20)),
        color: const Color(0xFFF4F6FD),
      ),
      child:Row(
        children: [
          Icon(icon0,color: const Color(0xFFBFC2DF),),
          Gap(Applayout.getwidth(9)),
          Text(textdata,style: MyStyles.headingstyle2,)
        ],
      ),
    );
  }
}
