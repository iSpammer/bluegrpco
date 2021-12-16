import 'package:bluegrpco/services/api_service.dart';
import 'package:bluegrpco/views/detail/controller/detail_controller.dart';
import 'package:bluegrpco/views/home/controller/home_controller.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DetailController());
  }

}