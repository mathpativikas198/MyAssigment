
import 'package:assignment/models/home/rockets_model.dart';
import 'package:assignment/utils/app_urls.dart';

import '../../data/network/network_api_service.dart';

class HomeRepository{

  final _apiService = NetworkApiServices();

  Future<dynamic> spaceListApi( ) async{
    dynamic response = await _apiService.getApi( AppUrl.spacexListUrl);
    List<SpaceListModel> data=[];
    response.forEach((element) {
      data.add(SpaceListModel.fromJson(element));
    });
    return data;
  }
}