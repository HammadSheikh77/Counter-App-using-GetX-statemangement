import 'package:get/get.dart';

class FavouriteMarkController extends GetxController {
  RxList<String> FuritList = ['Mango', 'Banana', 'Apple', 'Orange'].obs;
  RxList tempFuritList = [].obs;

  addToFavorite(String value){
    tempFuritList.add(value);
  }
  removeToFavourite(String value){
    tempFuritList.remove(value);
  }
}
