import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ScreenService{


  static double editFont() {
    double screenWidth = ScreenUtil().screenWidth;

      if(screenWidth < 360){
        return 30.sp;
      }

      else if (screenWidth < 700) {
        return 20.sp;
      }
      else if (screenWidth < 1000) {
        return 10.sp;
      }

      else if (screenWidth < 2500) {
        return 5.sp;
      }
      else{
        return 10.sp;
      }

  }

  static double editExpansionFont() {
    double screenWidth = ScreenUtil().screenWidth;

    if(screenWidth < 360){
      return 20.sp;
    }

    else if (screenWidth < 700) {
      return 10.sp;
    }

    else if (screenWidth < 2500) {
      return 5.sp;
    }
    else{
      return 10.sp;
    }

  }

  static double editTitle() {
    double screenWidth = ScreenUtil().screenWidth;

    if(screenWidth < 400){
      return 60.sp;
    }

    else if (screenWidth < 700) {
      return 40.sp;
    }
    else if (screenWidth < 1000) {
      return 30.sp;
    }

    else if (screenWidth < 2500) {
      return 19.sp;
    }
    else{
      return 10.sp;
    }

  }


  static Map<String, double> editImage() {
    double screenWidth = ScreenUtil().screenWidth;
    double height = 0;
    double width = 0;

    if(screenWidth < 450){
      height = 0.4.sh;
      width = 0.1.sw;
    }     //0.1 left ,


    else if (screenWidth < 2500) {
              height = 0.4.sh;
              width = 0.1.sw;
              // 0.4 left , 0.5 bbottom
    }
    return {"height": height, "width": width};

  }

  }

