import 'package:assignment/models/home/rockets_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/colors/app_color.dart';
import '../../../res/components/text_widget.dart';
import '../../../res/fonts/app_fonts.dart';
import '../../../res/routes/routes_name.dart';

class SpaceListWidget extends StatelessWidget {
  List<SpaceListModel> spaceList;
  SpaceListWidget({Key? key, required this.spaceList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: spaceList.length,
        itemBuilder: (context, index) {
          final item = spaceList[index];
          return Card(
            child: ListTile(
              title: TextWidget(
                title: item.name!,
                fontFamily: AppFonts.robotoRegular,
                textSize: 16,
                textColor: AppColor.primaryColor,
              ),
              subtitle: TextWidget(
                title: item.country!,
                fontFamily: AppFonts.robotoRegular,
                textSize: 14,
                textColor: AppColor.primaryTextColor,
              ),
              trailing: TextWidget(
                title: "Engine Count - "+item.secondStage!.engines.toString(),
                fontFamily: AppFonts.robotoRegular,
                textSize: 12,
                textColor: AppColor.primaryTextColor,
              ),
              leading: Image.network(item.flickrImages!.first),
              contentPadding: EdgeInsets.all(20),
              onTap: () {
                Get.toNamed(RoutesName.homeDetailView, arguments: item);
              },
            ),
          );
        });
  }
}
