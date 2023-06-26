import 'package:admin_app/model/catrgory.dart';
import 'package:get/get.dart';

import '../core/class/handledata.dart';
import '../core/class/satusrequst.dart';

import '../core/constant/routes.dart';
import '../data/datasource/remote/homedata.dart';

abstract class HomeController extends GetxController {
  Future<void> getData();
}

class HomeControllermpl extends HomeController {
  Homedata homedata = Homedata(Get.find());
  Category? caTegory;

  List<dynamic> category = [];
  List<dynamic> subcategory = [];
  List<dynamic> product = [];
  late String st;
  late StatusRequst statusrequst;

  @override
  void onInit() {
    st = '1';
    // Initial value for st
    getData();
    super.onInit();
  }

  @override
  Future<void> getData() async {
    statusrequst = StatusRequst.loading;
    var response = await homedata.postData(st);
    statusrequst = handlingData(response);
    if (statusrequst == StatusRequst.success) {
      if (response['status'] == "success") {
        category.addAll(response['data']);
      } else {
        statusrequst = StatusRequst.failure;
      }
    }
    update();
  }

  gToedit(Category caTegory) {
    Get.toNamed(AppRoute.editcategory, arguments: {"caTegory": caTegory});
  }

  goToMenu() {
    Get.toNamed(AppRoute.menu);
  }

  goToHome() {
    Get.toNamed(AppRoute.homepage);
  }

  gotoSettings() {
    Get.toNamed(AppRoute.settings);
  }
}
