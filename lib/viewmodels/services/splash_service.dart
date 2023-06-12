import 'dart:async';

import 'package:assignment/res/routes/routes_name.dart';
import 'package:get/get.dart';


class SplashService{

  void isLogin(){


        Timer(const Duration(seconds: 3), ()=> Get.offNamed(RoutesName.homeView));


  }

}