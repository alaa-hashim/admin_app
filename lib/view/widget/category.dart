import 'package:admin_app/view/widget/editcategory.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/homecontroller.dart';
import '../../core/constant/color.dart';
import '../../model/catrgory.dart';

class Categories extends StatelessWidget {
  final Category category;
  const Categories({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    HomeControllermpl controller = Get.put(HomeControllermpl());
    return Card(
      elevation: 4,
      child: SizedBox(
        height: 65,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  category.categoryName!,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w600,
                    color: AppColor.darkgray,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 155, bottom: 4, top: 4),
                child: VerticalDivider(
                  thickness: 2.7,
                  color: AppColor.darkgray,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => const Editcategory());
                    },
                    icon: (const Icon(
                      Icons.edit,
                      size: 30,
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
