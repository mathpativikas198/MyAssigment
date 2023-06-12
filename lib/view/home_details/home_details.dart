import 'package:assignment/view/home_details/widget/space_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../data/response/status.dart';
import '../../models/home/rockets_model.dart';
import '../../res/components/internet_exception_widget.dart';
import '../../viewmodels/controller/home_detail/home_detail_view_model.dart';

class HomeDetailsPage extends StatefulWidget {

   HomeDetailsPage({Key? key,}) : super(key: key);

  @override
  State<HomeDetailsPage> createState() => _HomeDetailsPageState();
}

class _HomeDetailsPageState extends State<HomeDetailsPage> {

  final homeDetailViewModel = HomeDetailViewModel();
  final SpaceListModel data = Get.arguments;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //commenting the api calling because we have the same response so we are just passing the arguments

    // homeDetailViewModel.getSpcaDetailApi("5e9d0d95eda69955f709d1eb");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body:
      //commenting this because we are passing the data from pages
      /*Obx((){
        switch(homeDetailViewModel.rxRequestStatus.value){
          case Status.LOADING:
            return Center(child: CircularProgressIndicator(),);
          case Status.ERROR:
            if(homeDetailViewModel.error.value == 'No Internet '){
              return InternetExceptionWidget(onPress: () {
                homeDetailViewModel.refreshSpcaDetailApi("5e9d0d95eda69955f709d1eb");
              },);
            }else{
              return Center(child: Text(homeDetailViewModel.error.toString()),);

            }
          case Status.COMPLETED:
            return SpaceDetailWidget(spaceListModel:  homeDetailViewModel.spaceList.value);
        }
      }),*/
      SpaceDetailWidget(spaceListModel:  data),
    );
  }
}
