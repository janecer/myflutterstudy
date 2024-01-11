
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(){
    return Get.height;
  }

  static double getScreenWidth(){
    return Get.width;
  }

  static double getHeight(double pixels){
    return pixels;
    // double x = getScreenHeight()/pixels;
    // return getScreenHeight()/x;
  }

  static getWidth(double pixels){
    return pixels;
    // double x = getScreenWidth()/pixels;
    // return getScreenWidth()/x;
  }
}