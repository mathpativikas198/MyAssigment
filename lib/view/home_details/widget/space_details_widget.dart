import 'package:assignment/res/colors/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../models/home/rockets_model.dart';
import '../../../res/components/text_widget.dart';
import '../../../res/fonts/app_fonts.dart';
import '../../home/widget/horizontal_flicker_image.dart';

class SpaceDetailWidget extends StatelessWidget {
  SpaceListModel spaceListModel;
  SpaceDetailWidget({Key? key, required this.spaceListModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            width: width,
            title: spaceListModel.name!,
            fontFamily: AppFonts.robotoBold,
            textSize: 24,
            textColor: AppColor.primaryTextColor,
          ),
          HorizontalFlickerImage(images: spaceListModel.flickrImages!),
          TextWidget(
            title: "Status - "+spaceListModel.active!.toString(),
            fontFamily: AppFonts.robotoMedium,
            textSize: 18,
            textColor: spaceListModel.active == false
                ? AppColor.redColor
                : AppColor.primaryColor,
          ),
          TextWidget(
            title: "Cost per launch - "+spaceListModel.costPerLaunch!.toString(),
            fontFamily: AppFonts.robotoMedium,
            textSize: 18,
            textColor: AppColor.primaryColor,
          ),
          TextWidget(
            title: "Success rate - "+spaceListModel.successRatePct!.toString(),
            fontFamily: AppFonts.robotoMedium,
            textSize: 18,
            textColor: AppColor.primaryTextColor,
          ),
          TextWidget(
            title: spaceListModel.description!,
            fontFamily: AppFonts.robotoRegular,
            textSize: 14,
            textColor: AppColor.blackColor,
          ),
          TextWidget(
            title: spaceListModel.wikipedia!,
            fontFamily: AppFonts.robotoMedium,
            textSize: 18,
            textColor: AppColor.blackColor,
          ),
          TextWidget(
            title: "Height - "+spaceListModel.height!.feet.toString()+"/ft",
            fontFamily: AppFonts.robotoMedium,
            textSize: 18,
            textColor: AppColor.blackColor,
          ),TextWidget(
            title: "Diameter - "+spaceListModel.diameter!.feet.toString()+"/ft",
            fontFamily: AppFonts.robotoMedium,
            textSize: 18,
            textColor: AppColor.blackColor,
          ),
        ],
      ),
    );
  }
}
