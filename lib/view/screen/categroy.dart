// ignore_for_file: unused_local_variable

import 'package:admin_app/core/constant/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/homecontroller.dart';
import '../../core/class/handlindatview.dart';
import '../../model/catrgory.dart';
import '../widget/addcategory.dart';
import '../widget/category.dart';

class Cats extends StatelessWidget {
  const Cats({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllermpl controller = Get.put(HomeControllermpl());
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        color: AppColor.darkgray,
                        fontSize: 18,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => const Addcategory());
                      },
                      child: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(children: [
                GetBuilder<HomeControllermpl>(
                  builder: (controller) => HandlingDataView(
                    statusRequest: controller.statusrequst,
                    widget: ListView.builder(
                      shrinkWrap: true,
                      // Disable inner ListView's scrolling
                      scrollDirection: Axis.vertical,
                      itemCount: controller.category.length,
                      itemBuilder: (context, i) {
                        return Categories(
                          category: Category.fromJson(controller.category[i]),
                        );
                      },
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ));
  }
}
