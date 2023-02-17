import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'app_layout.dart';
import 'mystyles.dart';

class ColumnLayout extends StatelessWidget {
  final String first_text,second_text;final bool? endin;final CrossAxisAlignment alignment;
  const ColumnLayout({Key? key,required this.first_text,required this.second_text,this.endin,required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text("$first_text",style: MyStyles.headingstyle2.copyWith(color: Colors.black),),
        Gap(Applayout.getheight(10)),
        Text("$second_text",style: MyStyles.headingstyle2.copyWith(color: Colors.grey)),
      ],
    );
  }
}
