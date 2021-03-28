import 'package:get/get.dart';

class HomeController extends GetxController {
  final beneficiaryItemsName = [
    "Flora El Radia Brompton",
    "Gorgon de Gorr El Rose",
    "Siti Fatimatuz Zahroh",
    "Almeera Fidyatun Nisa"
  ];
  final beneficiaryItemsUrl = [
    "https://media.sketchfab.com/models/854d6da061b74a0798aaa1f9366db4d9/thumbnails/adcee286fa0145f4b6d661f0c9e46c96/b0c18554ed26470fa63a043d15c36d3f.jpeg",
    "https://assets.3dtotal.com/data-import/data/images/interviews/1146-tid-closeup-jpg.dyqot3.image.i14.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzwl24NOaBKXVJHbCE18ONXBZDoZt2L8L1yw&usqp=CAU",
    "https://akcdn.detik.net.id/visual/2020/04/22/327b4f73-c53c-4e65-ad63-56a38479b2bd.png?w=650"
  ];
  final beneficiaryItemTargetMeal = [1000, 500, 300, 100];
  final beneficiaryItemMealGot = [250, 93, 154, 56];
  final beneficiaryItemDonatorCount = [43, 23, 25, 45];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
