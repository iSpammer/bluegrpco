import 'package:bluegrpco/services/api_service.dart';
import 'package:bluegrpco/views/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(HomeController());

  }

}