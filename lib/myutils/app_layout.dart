
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Applayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static screenHeight(){
    return Get.height;
  }

  static screenWidth(){
    return Get.width;
  }

  // Dynamic height and width
  static getheight(double pixels){
    double x=screenHeight()/pixels;
    return screenHeight()/x;
  }

  static getwidth(double pixels){
    double x=screenWidth()/pixels;
    return screenWidth()/x;
  }

}