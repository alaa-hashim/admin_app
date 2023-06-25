// ignore_for_file: unused_element

import 'dart:io';

import 'package:admin_app/core/class/handledata.dart';
import 'package:admin_app/core/class/satusrequst.dart';
import 'package:admin_app/data/datasource/remote/category.dart';
import 'package:admin_app/linkapi.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/functions/uploadimage.dart';

class CategoriesController extends GetxController {
  CatData catData = CatData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController namear;
  List category = [];
  StatusRequst statusRequst = StatusRequst.none;
  File? file;
  choiceFile() async {
    file = await fileUpload();
    update();
  }

  addData() async {
    if (formState.currentState!.validate()) {
      statusRequst = StatusRequst.loading;
      update();
      Map data = {
        "name": name,
        "namear": namear,
      };
      var response = await catData.addData(
        AppLink.checkemail,
        data,
      );
      statusRequst = handlingData(response);
      if (StatusRequst.success == statusRequst) {
        if (response['status'] == 'success') {
          Get.offNamed(AppLink.signup);
        } else {
          statusRequst = StatusRequst.serverfailure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    name = TextEditingController();
    namear = TextEditingController();
    super.onInit();
  }

  deleteData() {
    catData.deleteData(AppLink.catedit, {});
  }
}
