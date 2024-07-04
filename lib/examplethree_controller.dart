import 'package:get/get.dart';

class ExampleThreeController extends GetxController{

  RxBool notification = false.obs;
  setNotifications(bool value){
    notification.value = value;
  }
}