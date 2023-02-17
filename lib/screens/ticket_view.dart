//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbook_flutter/myutils/app_layout.dart';
import 'package:ticketbook_flutter/myutils/flight_info_list.dart';
import 'package:ticketbook_flutter/myutils/mystyles.dart';
import 'package:ticketbook_flutter/widgets/circular_cont.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> tickets;
  final bool? isColor;
  const TicketView({Key? key, required this. tickets,this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=Applayout.getSize(context);
    bool? known;
    isColor==null?known=null:known=true;
    return SizedBox(
      width: size.width*0.85,height: isColor==null?200.0:163.0,
      child:Container(
        margin: const EdgeInsets.only(right:20.0),
        //padding: const EdgeInsets.only(left:15.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor==null? const Color(0xFF526799):Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
              ),
              padding: const EdgeInsets.all(15.0),
              child:Column(
                children: [
                  Row(
                    children: [
                      Text("${tickets['from']['code']}",style: MyStyles.headingstyle3.copyWith(color: isColor==null?Colors.white:Colors.black,fontSize: 17.0),),
                      const Spacer(),
                      CircularContainer(isColor:known),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(height:24.0,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraint) {
                                  return  Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: List.generate((constraint.constrainWidth()/11).floor(), (index) => Text('--',style: TextStyle(color: isColor==null?Colors.white:Colors.black),)),
                                  );
                                },
                              )
                          ),
                          Center(
                            child: Transform.rotate(angle:1.5,child:Icon(Icons.local_airport_rounded,color:isColor==null?Colors.white:Colors.black,),
                            ),
                          )
                        ],
                      )),
                      CircularContainer(isColor: known,),
                      const Spacer(),
                      Text("${tickets['to']['code']}",style: MyStyles.headingstyle3.copyWith(color:isColor==null?Colors.white:Colors.black,fontSize: 17.0),),
                    ],
                  ),
                  const Gap(3.0),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width:100,child: Text("${tickets['from']['name']}",style: MyStyles.headingstyle3.copyWith(color: isColor==null?Colors.white:Colors.black),),
                      ),
                      const Spacer(),
                      Text("${tickets['flying_time']}",style: MyStyles.headingstyle3.copyWith(color:isColor==null? Colors.white:Colors.black),),
                      const Spacer(),
                      SizedBox(
                        width:100,child: Text("${tickets['to']['name']}",textAlign: TextAlign.right,style: MyStyles.headingstyle3.copyWith(color:isColor==null? Colors.white:Colors.black),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor==null?MyStyles.orangeColor:Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Stack(
                    children: [
                      SizedBox(height:24.0,
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraint) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: List.generate((constraint.constrainWidth()/14).floor(), (index) => Text('-',style: TextStyle(color: isColor==null?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                              );
                            },
                          )
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 20,width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color:isColor==null?MyStyles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomRight: isColor==null?const Radius.circular(10):Radius.zero,bottomLeft: isColor==null? const Radius.circular(10):Radius.zero),
              ),
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${tickets['date']}",style: MyStyles.headingstyle2.copyWith(color:isColor==null? Colors.white:Colors.black),),
                          Text('DATE',style: MyStyles.headingstyle3.copyWith(color:isColor==null? Colors.white:Colors.black),),
                        ]
                      ),
                      Column(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("${tickets['departure_time']}",style: MyStyles.headingstyle2.copyWith(color:isColor==null? Colors.white:Colors.black),),
                            Text('DEPT',style: MyStyles.headingstyle3.copyWith(color:isColor==null?Colors.white:Colors.black),),
                          ]
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("${tickets['number']}",style: MyStyles.headingstyle2.copyWith(color:isColor==null? Colors.white:Colors.black),),
                            Text('NUMBER',style: MyStyles.headingstyle3.copyWith(color: isColor==null?Colors.white:Colors.black),),
                          ]
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
