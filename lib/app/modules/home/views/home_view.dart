import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/common/utils/app_style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // TODO:IMPLEMENT DIALOG LOG OUT
        print("Implement logout dialog");
        Get.toNamed('/welcoming-page');
      },
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: backgroundColor,
            title: Text(
              'Home',
              style: appbartitleTextStyleMainColorBlack,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/profile-page');
                  },
                  child: Transform.scale(
                    scale: .90,
                    child: CircleAvatar(
                      backgroundColor: bodyTextColorGreyBright,
                      // TODO : CHANGE WITH AVATAR OF USER
                      backgroundImage: AssetImage('lib/res/img/galgadot.jpg'),
                    ),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(0),
            child: Container(
              padding: EdgeInsets.all(paddingBodyValue),
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  // Detail Beneficiaries Text
                  Text(
                    "Children that need our help.",
                    style: titleTextStyleBlack.copyWith(
                      fontSize: header4TextSize,
                    ),
                  ),
                  //
                  // Spacer
                  SizedBox(
                    height: spaceMedium,
                  ),
                  //
                  // List Builder for beneficiaries
                  ListView.builder(
                      padding: EdgeInsets.all(0),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.beneficiaryItemDonatorCount.length,
                      itemBuilder: (_, i) {
                        var name = controller.beneficiaryItemsName[i];
                        var urlImage = controller.beneficiaryItemsUrl[i];
                        var targetmeal =
                            controller.beneficiaryItemTargetMeal[i];
                        var mealGet = controller.beneficiaryItemMealGot[i];
                        var donatorCount =
                            controller.beneficiaryItemDonatorCount[i];
                        return GestureDetector(
                          onTap: () {
                            print(
                                "tapped on : item beneficiary $i , name : $name");
                            Get.toNamed('/detail-beneficiary-page', arguments: [
                              name,
                              urlImage,
                              targetmeal,
                              mealGet,
                              donatorCount,
                            ]);
                          },
                          child: beneficiaryItem(name, urlImage, targetmeal,
                              mealGet, donatorCount),
                        );
                      }),
                ],
              ),
            ),
          )),
    );
  }

  //
  // Beneficiary Item
  Widget beneficiaryItem(String name, String imageUrl, int targetMeal,
      int mealGot, int donatorCount) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      width: Get.width,
      height: Get.height * .33,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                color: bodyTextColorGrey,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                )),
            height: Get.height * .175,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(paddingNarrowCard),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                // Name Beneficiary
                Text(
                  name,
                  style: titleTextStyleBlack,
                ),
                //
                // Spacer
                SizedBox(height: spaceSmallest),
                //
                // Column Of Info Campign
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //
                    //  Progress Meals Value and Percent
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$mealGot of $targetMeal meals",
                          style: bodyTextStyleMainColor,
                        ),
                        Text(
                          "${((mealGot / targetMeal) * 100).toStringAsFixed(1)}%",
                          style: bodyTextStyleGrey,
                        ),
                      ],
                    ),
                    //
                    // Spacer
                    SizedBox(height: spaceSmallest),
                    //
                    //  Progress Meals Value and Percent Indicator
                    SizedBox(
                      height: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(mainColorDark),
                          backgroundColor: bodyTextColorGrey.withOpacity(.2),
                          value: ((mealGot / targetMeal)),
                        ),
                      ),
                    ),
                    //
                    // Spacer
                    SizedBox(height: spaceSmallest),
                    Text(
                      "$donatorCount donators",
                      style: bodyTextStyleBlack,
                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
