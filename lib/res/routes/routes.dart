import 'package:assignment/view/home_details/home_details.dart';
import 'package:assignment/view/splash_screen.dart';
import 'package:assignment/res/routes/routes_name.dart';
import 'package:get/get.dart';

import '../../models/home/rockets_model.dart';
import '../../view/home/home_view.dart';

class AppRoutes{

  static appRoute()=>[
    GetPage(
        name: RoutesName.splashScreen,
        page: ()=> SplashScreen(),
        transitionDuration: Duration(microseconds: 250),
        transition: Transition.leftToRight),
    GetPage(
        name: RoutesName.homeView,
        page: ()=> HomeView(),
        arguments: SpaceListModel(),
        transitionDuration: Duration(microseconds: 250),
        transition: Transition.leftToRight),
    GetPage(
        name: RoutesName.homeDetailView,
        page: ()=> HomeDetailsPage(),
        transitionDuration: Duration(microseconds: 250),
        transition: Transition.leftToRight),
  ];
}