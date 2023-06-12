import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:assignment/res/colors/app_color.dart';
import 'package:get/get.dart';

class Utils{

  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode next){
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
      backgroundColor: AppColor.blackColor,
        gravity: ToastGravity.BOTTOM
    );
  }
  static toastMessageCenter(String message){
    Fluttertoast.showToast(
        msg: message,
      backgroundColor: AppColor.blackColor,
        gravity: ToastGravity.CENTER
    );
  }

  static snackBar(String title, String message){
    Get.snackbar(title, message);
  }


}