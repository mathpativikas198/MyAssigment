import 'package:assignment/res/assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../viewmodels/services/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashService splashService = SplashService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashService.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        width: double.infinity,
        height: double.infinity,
        image: AssetImage(ImageAssets.splashScreen),
      ),
    );
  }
}
