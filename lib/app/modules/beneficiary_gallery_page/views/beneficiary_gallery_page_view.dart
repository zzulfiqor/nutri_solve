import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/beneficiary_gallery_page_controller.dart';

class BeneficiaryGalleryPageView
    extends GetView<BeneficiaryGalleryPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeneficiaryGalleryPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeneficiaryGalleryPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
