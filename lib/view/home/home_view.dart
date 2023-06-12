import 'package:assignment/view/home/widget/space_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/response/status.dart';
import '../../res/colors/app_color.dart';
import '../../res/components/internet_exception_widget.dart';
import '../../res/components/text_widget.dart';
import '../../res/fonts/app_fonts.dart';
import '../../res/routes/routes_name.dart';
import '../../viewmodels/controller/home/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = HomeViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.getSpcaListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: TextWidget(
          title: "Spacex Assignment",
          fontFamily: AppFonts.robotoBold,
          textSize: 20,
          textColor: AppColor.whiteColor,
        ),
        // actions: [
        //   IconButton(onPressed: (){
        //     _userPrefencesViewModel.removeUser().then((value) {
        //       Get.toNamed(RoutesName.loginView);
        //     });
        //   }, icon: Icon(Icons.logout))
        // ],
      ),
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return Center(
              child: CircularProgressIndicator(),
            );
          case Status.ERROR:
            if (homeController.error.value == 'No Internet ') {
              return InternetExceptionWidget(
                onPress: () {
                  homeController.refreshSpcaListApi();
                },
              );
            } else {
              return Center(
                child: Text(homeController.error.toString()),
              );
            }
          case Status.COMPLETED:
            return SpaceListWidget(
              spaceList: homeController.spaceList.value,
            );
        }
      }),
    );
  }
}
