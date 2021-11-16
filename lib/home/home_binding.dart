import 'package:get/get.dart';
import 'package:getx_except_sandbox/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
