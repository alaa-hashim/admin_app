// ignore_for_file: sized_box_for_whitespace

import 'package:admin_app/core/functions/validater.dart';
import 'package:admin_app/view/widget/textfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/category/addcontroller.dart';
import '../../core/constant/color.dart';
import 'custombutton.dart';

class Addcategory extends StatelessWidget {
  const Addcategory({super.key});

  @override
  Widget build(BuildContext context) {
    AddcategoriesController controller = Get.put(AddcategoriesController());
    return Form(
      key: controller.formState,
      child: Container(
        height: 385,
        child: Column(children: [
          Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColor.lightgray),
              child: const Center(child: Text("Add Category"))),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 14.0, bottom: 8, right: 9, left: 9),
            child: CustomTextFormAuth(
              hinttext: 'English Name',
              isNumber: false,
              labeltext: 'English Name',
              isTextarea: true,
              valid: (val) {
                return inputvalidater(val!, 1, 30, "");
              },
              mycontroller: controller.name,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 14.0, bottom: 8, right: 9, left: 9),
            child: CustomTextFormAuth(
              hinttext: 'Arabic Name',
              isNumber: false,
              labeltext: 'Arabic Name',
              isTextarea: true,
              valid: (val) {
                return inputvalidater(val!, 1, 30, "");
              },
              mycontroller: controller.namear,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => controller.addData(),
              child: CustomBuottn(
                color: AppColor.primaryColor,
                height: 65,
                text: const Text(
                  'Update',
                  style: TextStyle(color: AppColor.black),
                ),
                width: double.infinity,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
