import 'package:admin_app/core/class/apihandler.dart';
import 'package:get/get.dart';

class Inibindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiHandler());
  }
}
