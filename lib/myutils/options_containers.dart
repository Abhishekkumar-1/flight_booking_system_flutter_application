import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_layout.dart';
import 'mystyles.dart';

class OptionsContainer extends StatelessWidget {
  final String text1,text2;
  const OptionsContainer({Key? key,required this.text1,required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=Applayout.getSize(context);
    return  Container(
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
            child: Center(child: Text("${text1}",style: MyStyles.headingstyle2.copyWith(color: Colors.grey.shade700,fontSize: 19,letterSpacing: 0),),),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: Applayout.getheight(15)),
            width: size.width*0.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getheight(20)),
              //color: Colors.lightBlue.shade100,
            ),
            child: Center(child: Text("${text2}",style: MyStyles.headingstyle2.copyWith(color: Colors.grey.shade700,fontSize: 19,letterSpacing: 0),),),
          ),
        ],
      ),
    );
  }
}
