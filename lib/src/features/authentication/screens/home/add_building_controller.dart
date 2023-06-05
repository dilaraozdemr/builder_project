
import 'package:get/get.dart';
class AddBuildingController extends GetxController{
  RxBool isDurableCheckBoxChecked = false.obs;
  static AddBuildingController get instance => Get.find();

  void changeAuditorStatus(){
    isDurableCheckBoxChecked.value = !isDurableCheckBoxChecked.value;
  }

}