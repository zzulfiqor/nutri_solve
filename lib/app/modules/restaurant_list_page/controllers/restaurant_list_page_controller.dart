import 'package:get/get.dart';

class RestaurantListPageController extends GetxController {
  final listUrlKitchen = [
    "https://duetdesigngroup.com/wp-content/uploads/2020/04/Post-Pandemic-2020-Restaurant-Design-Duet-Design-Group-Denver-Colorado-Thumbnail-v2-e1587065783276.jpg",
    "https://d2w1ef2ao9g8r9.cloudfront.net/images/_sameSizeThumb/Owning-a-Restaurant-Thumbnail-Image.png?mtime=20200623111822&focal=none&tmtime=20210107111522",
    "https://nashvillelifestyles.com/downloads/36015/download/thumbnail-1.jpeg?cb=c40d56c09f51fc6cd13e61330574a4b3&w=640",
    "https://www.thredbo.com.au/wp-content/uploads/2016/03/August-15-2019_5L7A8685_TEC-700x500.jpg",
    "https://www.trafalgar.com/real-word/wp-content/uploads/sites/3/2020/03/restaurant-691397_1920-750x400.jpg",
    "https://duetdesigngroup.com/wp-content/uploads/2020/04/Post-Pandemic-2020-Restaurant-Design-Duet-Design-Group-Denver-Colorado-Thumbnail-v2-e1587065783276.jpg",
    "https://d2w1ef2ao9g8r9.cloudfront.net/images/_sameSizeThumb/Owning-a-Restaurant-Thumbnail-Image.png?mtime=20200623111822&focal=none&tmtime=20210107111522",
  ];

  final listNamaKitchen = [
    "Dapur Spesial Anak-anak Bu Sirni",
    "Mama Healthy Kitchen",
    "Bubur Bayi Bu Srinanto",
    "Kitchen and Restaurant Kabupaten Pati",
    "Dapur Spesial Anak-anak Bu Sirni",
    "Papa Healthy Kitchen",
    "Bubur Bayi Bu Srinanto",
  ];

  final listSpecialitiesKitchen = [
    "Salad, Baby food",
    "Porridge, Meat",
    "Salad, Meat",
    "High nutrition food",
    "Salad, Nuts, High nutrition food",
    "Salad, Meat",
    "Meat, Salad"
  ];

  final listDistanceFromBeneficiaryKitchenInMinutes = [
    23,
    34,
    15,
    10,
    5.5,
    40,
    10
  ];

  final listRestaurantAdress = [
    "Margoyoso, Pati",
    "Margorejo, Pati",
    "Dawe, Kudus",
    "Sukolilo, Pati",
    "Sleko, Rembang",
    "Margoyoso, Pati",
    "Margorejo, Pati",
  ];

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
