import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> gadgetList = [
    'Smartphone',
    "Smart watch",
    "True Wireless Stereo",
    "Powerbank",
  ].obs;

  // dynamic tempGadgetList = {}.obs;

  RxList tempGadgetList = [].obs;

  addToFavourite(String value) {
    tempGadgetList.add(value);
  }

  removeFromFavourite(String value) {
    tempGadgetList.remove(value);
  }
}
