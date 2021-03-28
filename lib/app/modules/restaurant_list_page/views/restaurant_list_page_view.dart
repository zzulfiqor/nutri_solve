import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/common/utils/app_style.dart';
import 'package:nutri_solve/common/widgets/AppbarBackButton.dart';
import 'package:shimmer/shimmer.dart';

import '../controllers/restaurant_list_page_controller.dart';

class RestaurantListPageView extends GetView<RestaurantListPageController> {
  final name = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppbarBackButton(),
        backgroundColor: backgroundColor,
        actions: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _locationAppbarButton(),
            ],
          ),
          //
          // Spacer
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0),
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(paddingBodyValue),
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              // Header Section
              Text(
                'Kitchens closest to,',
                style: titleTextStyleBlack.copyWith(fontSize: header2TextSize),
              ),
              // TODO:IMPLEMENT THE NAME OF RECIPIENT
              Text(
                '$name',
                style: bodyTextStyleGrey.copyWith(fontSize: header4TextSize),
              ),
              //
              // Spacer
              SizedBox(height: spaceSmall),
              //
              // Restaurant List Section
              ListView.builder(
                  itemCount: controller.listNamaKitchen.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (_, i) => Material(
                      child: InkWell(
                          onTap: () => Get.toNamed('/restaurant-detail-page',
                                  arguments: [
                                    controller.listNamaKitchen[i],
                                    controller.listUrlKitchen[i]
                                  ]),
                          child: restaurantListItem(i))))
            ],
          ),
        ),
      ),
    );
  }

  Container restaurantListItem(int i) => Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: Get.height * .17,
        width: Get.width,
        child: Row(
          children: [
            //
            // Side Image Of Restaurant
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: Get.height * .173,
                width: Get.width * .33,
                child: Image.network(
                  '${controller.listUrlKitchen[i]}',
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Shimmer(
                        child: Container(
                          height: 120,
                          width: 120,
                          color: bodyTextColorGrey,
                        ),
                        gradient: LinearGradient(stops: [
                          0.5,
                          0.6,
                          0.7
                        ], colors: [
                          bodyTextColorGrey.withOpacity(.3),
                          bodyTextColorGreyBright.withOpacity(.5),
                          bodyTextColorGrey.withOpacity(.3),
                        ]));
                  },
                ),
              ),
            ),
            //
            // Side restaurant info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //
                    // Restaurant Name
                    Text(
                      "${controller.listNamaKitchen[i]}",
                      style: titleTextStyleBlack,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Column(
                      children: [
                        //
                        // Restaurant Specialities Food
                        Row(
                          children: [
                            //
                            // Icon Specialities
                            Icon(
                              Icons.room_service,
                              color: mainColorDark,
                              size: 18,
                            ),
                            //
                            // Spacer
                            SizedBox(width: spaceSmallest),
                            //
                            // Restaurant Specialities
                            Expanded(
                              child: Text(
                                "${controller.listSpecialitiesKitchen[i]}",
                                style: bodysubParagraphTextStyleGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        //
                        // Spacer
                        SizedBox(height: spaceSmallest),
                        //
                        // Row Of Another Address
                        Row(
                          children: [
                            //
                            // Icon Address
                            Icon(
                              Icons.location_pin,
                              color: Colors.red,
                              size: 18,
                            ),
                            //
                            // Spacer
                            SizedBox(width: spaceSmallest),
                            //
                            // Restaurant Distance
                            Expanded(
                              child: Text(
                                "${controller.listRestaurantAdress[i]}",
                                style: bodysubParagraphTextStyleGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        //
                        // Spacer
                        SizedBox(height: spaceSmallest),
                        //
                        // Row Of Another Time DIstance
                        Row(
                          children: [
                            //
                            // Icon Time
                            Icon(
                              Icons.timer,
                              color: Colors.blue,
                              size: 18,
                            ),
                            //
                            // Spacer
                            SizedBox(width: spaceSmallest),
                            //
                            // Restaurant Distance
                            Expanded(
                              child: Text(
                                "${controller.listDistanceFromBeneficiaryKitchenInMinutes[i]} minutes from recipient",
                                style: bodysubParagraphTextStyleGrey,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  ClipRRect _locationAppbarButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        child: InkWell(
          onTap: () => {},
          child: Ink(
            decoration: BoxDecoration(
                color: bodyTextColorGreyBright,
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                //
                // Icon Location
                Icon(Icons.location_pin, size: 20, color: mainColorDark),
                //
                // Spacer
                SizedBox(width: spaceSmallest),
                //
                // Send to location
                Text(
                  'Send to : ',
                  style: bodyTextStyleBlack,
                ),
                // TODO : IMPLEMENT SELECTED BENEFICIARY NAME
                Text(
                  '$name',
                  style: bodyTextStyleGrey,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                //
                // Icon Down
                Icon(Icons.arrow_drop_down, size: 24, color: bodyTextColorGrey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
