import 'package:get/get.dart';

import '../core/class/handledata.dart';
import '../core/class/satusrequst.dart';

import '../data/datasource/remote/homedata.dart';

abstract class HomeController extends GetxController {
  Future<void> getData();
}

class HomeControllermpl extends HomeController {
  Homedata homedata = Homedata(Get.find());

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
      if (response['success']) {
        if (st == '1') {
          category.addAll(response['data']);
          st = '2'; // Update st to '2' for the next request
        } else if (st == '2') {
          subcategory.addAll(response['data']);
          st = '3'; // Update st to '3' for the next request
        } else if (st == '3') {
          product.addAll(response['data']);
          st = '1'; // Update st back to '1' for the next request (loop)
        }
      } else {
        statusrequst = StatusRequst.failure;
      }
    }
    update();
  }
}
