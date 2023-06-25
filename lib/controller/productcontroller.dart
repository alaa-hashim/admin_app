import 'package:admin_app/data/datasource/remote/items.dart';
import 'package:get/get.dart';

import '../core/class/handledata.dart';
import '../core/class/satusrequst.dart';
import '../../../linkapi.dart';

abstract class ProductController extends GetxController {
  Future<void> getData();
}

class ProductControllermpl extends ProductController {
  ItemsData itemsData = ItemsData(Get.find());

  List<dynamic> product = [];
  late String st;
  late StatusRequst statusrequst;

  @override
  void onInit() {
    st = '3';
    // Initial value for st
    getData();
    super.onInit();
  }

  @override
  Future<void> getData() async {
    statusrequst = StatusRequst.loading;
    var response = await itemsData.getData(AppLink.homepage, {"st": "3"});
    statusrequst = handlingData(response);
    if (statusrequst == StatusRequst.success) {
      if (response['status'] == "success") {
        product.addAll(response['data']);
      } else {
        statusrequst = StatusRequst.failure;
      }
    }
    update();
  }
}
