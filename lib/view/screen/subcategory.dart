// ignore_for_file: unused_local_variable

import 'package:admin_app/core/class/handlindatview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/homecontroller.dart';
import '../../core/constant/color.dart';
import '../../model/subcategory.dart';

class Subcategory extends StatelessWidget {
  const Subcategory({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllermpl controller = Get.put(HomeControllermpl());
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text("Subcategories"), Icon(Icons.add)],
        ),
      ),
      Expanded(
        child: GetBuilder<HomeControllermpl>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusrequst,
              widget: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: controller.subcategory.length,
                  itemBuilder: (context, i) {
                    return SizedBox(
                      width: 120,
                      child: Expanded(
                        child: Column(
                          children: [
                            const SizedBox(width: 200),
                            Subcat(
                              subcategories: Subcategories.fromJson(
                                  controller.subcategory[i]),
                            ),
                            if (i == controller.subcategory.length - 1)
                              const Text("Category list is finished"),
                          ],
                        ),
                      ),
                    );
                  })),
        ),
      ),
    ]);
  }
}

class Subcat extends StatelessWidget {
  final Subcategories subcategories;
  const Subcat({super.key, required this.subcategories});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 28),
        child: Text(
          subcategories.subcatName!,
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
            color: AppColor.darkgray,
          ),
        ),
      ),
    ));
  }
}
