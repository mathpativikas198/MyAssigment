import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../data/response/status.dart';
import '../../../models/home/rockets_model.dart';
import '../../../repository/home_detail_repository/home_details_repository.dart';
import '../../../utils/utils.dart';

class HomeDetailViewModel extends GetxController{

  final _api = HomeDetailsRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final spaceList = SpaceListModel().obs;
  RxString error =''.obs;

  void setRxrequestStatus(Status _value)=> rxRequestStatus.value = _value;
  void setSpaceListStatus(SpaceListModel _value)=> spaceList.value = _value;
  void setError(String _value)=> error.value = _value;

  void getSpcaDetailApi(String id){
    // setRxrequestStatus(Status.LOADING);

    _api.spaceDetailApi(id).then((value) {

      setRxrequestStatus(Status.COMPLETED);
      setSpaceListStatus(value);


    }).onError((error, stackTrace) {

      setError(error.toString());
      setRxrequestStatus(Status.ERROR);
      // Utils.snackBar('Error', error.toString());

    });
  }
  void refreshSpcaDetailApi(String id){
    setRxrequestStatus(Status.LOADING);

    _api.spaceDetailApi(id).then((value) {

      setRxrequestStatus(Status.COMPLETED);
      setSpaceListStatus(value);


    }).onError((error, stackTrace) {

      setError(error.toString());
      setRxrequestStatus(Status.ERROR);
      // Utils.snackBar('Error', error.toString());

    });
  }

}