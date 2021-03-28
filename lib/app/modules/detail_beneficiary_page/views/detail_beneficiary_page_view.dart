import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/common/utils/app_style.dart';

import '../controllers/detail_beneficiary_page_controller.dart';

class DetailBeneficiaryPageView
    extends GetView<DetailBeneficiaryPageController> {
  final args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                )
              ]),
          padding: EdgeInsets.all(paddingBodyValue),
          height: 100,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 50,
                  width: Get.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: mainColorDark),
                      onPressed: () {
                        Get.toNamed('/restaurant-list-page',
                            arguments: args[0]);
                      },
                      child: Text(
                        "Send me food",
                        style: titleTextStyleWhite,
                      ))),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          actions: [
            IconButton(
              onPressed: () => Get.bottomSheet(_bottomSheetShare()),
              icon: Icon(
                Icons.share,
                color: bodyTextColorBlackGrey,
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: bodyTextColorBlackGrey,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          physics: BouncingScrollPhysics(),
          child: Container(
            color: backgroundColor,
            padding:
                EdgeInsets.all(paddingBodyValue) + EdgeInsets.only(bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                // Image of selected Beneficiary
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: Get.height * .25,
                    width: Get.width,
                    child: Image.network(
                      args[1],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //
                // Spacer
                SizedBox(height: spaceMedium),
                //
                // Name of selected Beneficiary
                Text(
                  args[0],
                  style: titleTextStyleBlack.copyWith(
                    fontSize: header2TextSize,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                //
                // Spacer
                SizedBox(height: spaceSmall),
                //
                // Detail info of beneficiary
                Material(
                  child: InkWell(
                    onTap: () {
                      Get.toNamed('/beneficiary-description');
                    },
                    child: Ink(
                      color: backgroundColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // TODO : PLACE REAL BENEFICIARY DESCRIPTION HERE
                          Text(
                            "Nussa adalah sebuah serial animasi Indonesia yang diproduksi oleh studio animasi The Little Giantz dan 4Stripe Productions.[1][2][3] Animasi ini ditayangkan pada layanan berbagi-video YouTube sejak November 2018 .[4] Animasi ini sudah pernah tayang melalui dua saluran televisi gratis/FTA Indonesia NET. selama Ramadan 1440 H/2019 M, Indosiar sejak Oktober 2019[5] dan saluran berbayar Malaysia Astro Ceria di tahun yang sama.",
                            style: bodyTextStyleBlack,
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          //
                          // Spacer
                          SizedBox(height: spaceSmallest),
                          //
                          // Text Read More
                          Text(
                            'Read more about this →',
                            style: titleTextStyleBlack.copyWith(
                              fontSize: bodyParagraphTextSize,
                              color: mainColorDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //
                // Spacer
                SizedBox(height: spaceMedium),
                //
                // Progress Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //
                    //  Progress Meals Value and Percent
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${args[3]} of ${args[2]} meals",
                          style: bodyTextStyleMainColor,
                        ),
                        Text(
                          "${((args[3] / args[2]) * 100).toStringAsFixed(1)}%",
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
                            value: ((args[3] / args[2]))),
                      ),
                    ),
                    //
                    // Spacer
                    SizedBox(height: spaceSmallest),
                    Text(
                      "${args[4]} donators",
                      style: bodyTextStyleBlack,
                    ),
                  ],
                ),
                //
                // Spacer
                SizedBox(height: spaceMedium),
                //
                // Updates tile button
                tileButton(
                  "Campaign",
                  onTap: () => Get.toNamed('/beneficiary-description'),
                ),
                //
                // Updates tile button
                tileButton("Updates",
                    onTap: () => Get.toNamed('/beneficiary-updates-page')),
                //
                // Updates tile button
                tileButton("Gallery",
                    isLastButton: true,
                    onTap: () => Get.toNamed('/beneficiary-gallery-page')),
              ],
            ),
          ),
        ));
  }

  Column tileButton(String title, {bool isLastButton = false, Function onTap}) {
    return Column(
      children: [
        Material(
          child: InkWell(
            // TODO:IMPLEMENTS TILE BUTTON FUNCTION
            onTap: onTap,
            child: Ink(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //
                    // Tile Name
                    Text(
                      "$title",
                      style: titleTextStyleBlack,
                    ),
                    //
                    // Trailing icon
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                )),
          ),
        ),
        //
        // Divider
        Container(
          height: (isLastButton) ? 0 : 1,
          color: bodyTextColorGrey.withOpacity(.2),
        ),
      ],
    );
  }

  // TODO:FINISH THIS BOTTOMSHEET OF SHARING
  Container _bottomSheetShare() {
    return Container(
      padding: EdgeInsets.all(paddingBodyValue),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      height: 200,
      child: Column(
        children: [
          //
          // Bottom Sheet title
          Text(
            "Share this campaign",
            style: titleTextStyleBlack,
          ),
          //
          // Spacer
          SizedBox(height: spaceSmall),
          //
          // Divider
          Container(
            height: 1,
            color: bodyTextColorGrey.withOpacity(.2),
          ),
        ],
      ),
    );
  }
}
