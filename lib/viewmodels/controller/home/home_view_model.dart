import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../data/response/status.dart';
import '../../../models/home/rockets_model.dart';
import '../../../repository/home_repository/home_repository.dart';
import '../../../utils/utils.dart';

class HomeViewModel extends GetxController{

  final _api = HomeRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final spaceList = <SpaceListModel>[].obs;
  RxString error =''.obs;

  void setRxrequestStatus(Status _value)=> rxRequestStatus.value = _value;
  void setSpaceListStatus(List<SpaceListModel> _value)=> spaceList.value = _value;
  void setError(String _value)=> error.value = _value;

  void getSpcaListApi(){
    // setRxrequestStatus(Status.LOADING);

    _api.spaceListApi().then((value) {

      setRxrequestStatus(Status.COMPLETED);
      setSpaceListStatus(value);


    }).onError((error, stackTrace) {

      setError(error.toString());
      setRxrequestStatus(Status.ERROR);
      // Utils.snackBar('Error', error.toString());

    });
  }
  void refreshSpcaListApi(){
    setRxrequestStatus(Status.LOADING);

    _api.spaceListApi().then((value) {

      setRxrequestStatus(Status.COMPLETED);
      setSpaceListStatus(value);


    }).onError((error, stackTrace) {

      setError(error.toString());
      setRxrequestStatus(Status.ERROR);
      // Utils.snackBar('Error', error.toString());

    });
  }

}