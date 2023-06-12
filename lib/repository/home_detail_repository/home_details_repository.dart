
import 'package:assignment/models/home/rockets_model.dart';
import 'package:assignment/utils/app_urls.dart';
import 'package:flutter/foundation.dart';

import '../../data/network/network_api_service.dart';

class HomeDetailsRepository{

  final _apiService = NetworkApiServices();

  Future<dynamic> spaceDetailApi( String id ) async{
    dynamic response = await _apiService.getApi( AppUrl.spacexListUrl+"/"+id);
    return SpaceListModel.fromJson(response);
  }
}