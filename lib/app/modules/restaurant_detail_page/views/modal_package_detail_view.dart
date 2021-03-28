import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/app/modules/restaurant_detail_page/controllers/restaurant_detail_page_controller.dart';
import 'package:nutri_solve/common/utils/app_style.dart';


class ModalPackageDetailView extends GetView<RestaurantDetailPageController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Get.back();
        controller.emptyOrderCount();
      },
      child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: _floatingActionButtonOrder(),
          appBar: AppBar(
            backgroundColor: backgroundColor,
            leading: IconButton(
              onPressed: () {
                Get.back();
                controller.emptyOrderCount();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: bodyTextColorBlackGrey,
              ),
            ),
            title: Text(
              'Package Detail',
              style: titleTextStyleBlack,
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(0),
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.only(
                    top: paddingBodyValue,
                    left: paddingBodyValue,
                    right: paddingBodyValue,
                    bottom: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //
                    // Package Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadiusBoxValue),
                      child: SizedBox(
                          height: Get.height * .23,
                          width: Get.width,
                          child: Image.network(
                            'https://akcdn.detik.net.id/community/media/visual/2020/03/17/7f5fd870-4803-46c4-834b-cb43c15de145.jpeg?q=90&w=480',
                            fit: BoxFit.cover,
                          )),
                    ),
                    //
                    // Spacer
                    SizedBox(height: spaceSmall),
                    //
                    // Package Name
                    Text(
                      "Paket Berbagi 7 Hari",
                      style: titleTextStyleBlack.copyWith(
                        fontSize: header3TextSize,
                      ),
                    ),
                    //
                    // Spacer
                    SizedBox(height: spaceSmall),
                    //
                    // Package Description
                    Text(
                      "Paket berbagi 7 hari adalah paket makan balita yang berisi menu untuk sarapan, makan siang, dan makan malam. Isi makanan akan disesuaikan dengan keadaan anak dan menu akan di selang-seling setiap minggu agar tidak membuat jenuh.",
                      style: bodyTextStyleBlack.copyWith(
                          color: bodyTextColorBlackGrey),
                      textAlign: TextAlign.justify,
                    ),
                    //
                    // Spacer
                    SizedBox(height: spaceWide),
                    //
                    // Text Note
                    Text(
                      "Order Note :",
                      style: titleTextStyleBlack.copyWith(
                          fontSize: header4TextSize),
                    ),
                    //
                    // Spacer
                    SizedBox(height: spaceSmallest),
                    //
                    // Note Order
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: bodyTextColorGreyBright,
                        borderRadius: BorderRadius.circular(
                          borderRadiusTextInputValue,
                        ),
                      ),
                      height: 100,
                      width: Get.width,
                      // TODO : Implement Input Text
                      child: TextField(
                        style: bodyTextStyleBlack,
                        keyboardType: TextInputType.multiline,
                        cursorColor: mainColorDark,
                        maxLines: 5,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "ex : no onion, no spicy",
                            hintStyle: hintStyleGrey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  Widget _floatingActionButtonOrder() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingBodyValue),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(borderRadiusBoxValue)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: 90,
      child: Row(
        children: [
          //
          // Row of Counter order
          SizedBox(
            width: Get.width * .4,
            child: GetX<RestaurantDetailPageController>(
              init: RestaurantDetailPageController(),
              initState: (_) {},
              builder: (_) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //
                      // Button Minus
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: mainColorBright.withOpacity(.3)),
                            height: 40,
                            width: 40,
                          ),
                          IconButton(
                              splashColor: mainColorDark,
                              highlightColor: mainColorBright,
                              icon: Icon(
                                Icons.remove,
                                color: mainColorDark,
                              ),
                              onPressed: () => _.orderCountSub()),
                        ],
                      ),
                      //
                      // Text COunter
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: 200),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return ScaleTransition(
                              child: child, scale: animation);
                        },
                        child: Text(
                          "${_.orderCount.value}",
                          style: titleTextStyleBlack.copyWith(
                              fontSize: header4TextSize),
                          key: Key(_.orderCount.toString()),
                        ),
                      ),
                      //
                      // Button Plus
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: mainColorBright.withOpacity(.3)),
                            height: 40,
                            width: 40,
                          ),
                          IconButton(
                              splashColor: mainColorDark,
                              highlightColor: mainColorBright,
                              icon: Icon(
                                Icons.add,
                                color: mainColorDark,
                              ),
                              onPressed: () => _.orderCountAdd()),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          //
          // Button Order
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              height: 50,
              child: GetBuilder<RestaurantDetailPageController>(
                init: RestaurantDetailPageController(),
                initState: (_) {},
                builder: (_) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: mainColorDark),
                    onPressed: () {
                      _.itemAddFromOrderCount(_.orderCount.value);
                      Get.back();
                      _.emptyOrderCount();
                    },
                    child: Text("Order"),
                  );
                },
              ),
            ),
          ))
        ],
      ),
    );
  }
}
