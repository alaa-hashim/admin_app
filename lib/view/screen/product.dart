// ignore_for_file: use_key_in_widget_constructors

import 'package:admin_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/productcontroller.dart';
import '../../core/functions/validater.dart';
import '../../model/product.dart';
import '../widget/custombutton.dart';
import '../widget/showmodel.dart';
import '../widget/textfiled.dart';

class Items extends StatelessWidget {
  const Items({Key? key});

  @override
  Widget build(BuildContext context) {
    ProductControllermpl controller = Get.put(ProductControllermpl());
    List<Product> products = List<Product>.from(
        controller.product.map((data) => Product.fromJson(data)));
    List<int> displayedSubcatIds = [];

    return Container(
      color: AppColor.bg,
      child: ListView.builder(
        itemBuilder: (context, i) {
          Product subcategory = products[i];
          if (displayedSubcatIds.contains(subcategory.subcatId)) {
            // If the subcategory has already been displayed, skip it
            return const SizedBox.shrink();
          }
          displayedSubcatIds.add(subcategory.subcatId!);

          List<Product> subcategoryProducts = products
              .where((product) => product.subcatId == subcategory.subcatId)
              .toList();

          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                subcategory.subcatName!, // Display the subcategory name
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: subcategoryProducts.length,
                itemBuilder: (context, index) {
                  Product product = subcategoryProducts[index];
                  return Item(product: product);
                },
              ),
            ],
          );
        },
        itemCount: products.length,
      ),
    );
  }
}

class Item extends StatelessWidget {
  final Product product;
  const Item({Key? key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(product.proudctImg!),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      product.productName!,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w600,
                        color: AppColor.darkgray,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text(
                        product.price!.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Edit Sizes",
                        style: TextStyle(color: AppColor.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 80, top: 10, bottom: 12, right: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => showModalBottomSheet(
                          context: context,
                          builder: (context) => Column(
                                children: [
                                  const Showmodel(
                                    title: Text("Update Item"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 14.0,
                                        bottom: 8,
                                        right: 9,
                                        left: 9),
                                    child: CustomTextFormAuth(
                                      hinttext: 'name',
                                      iconData: Icons.abc,
                                      isNumber: false,
                                      labeltext: '',
                                      isTextarea: true,
                                      valid: (val) {
                                        return inputvalidater(val!, 1, 30, "");
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomTextFormAuth(
                                      hinttext: 'name',
                                      iconData: Icons.abc,
                                      isNumber: false,
                                      labeltext: '',
                                      isTextarea: false,
                                      valid: (val) {
                                        return inputvalidater(val!, 1, 30, "");
                                      },
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomBuottn(
                                        color: AppColor.primaryColor,
                                        height: 65,
                                        text: const Text(
                                          'Update',
                                          style:
                                              TextStyle(color: AppColor.black),
                                        ),
                                        width: 90,
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                      child: const Icon(
                        Icons.edit,
                        color: AppColor.darkgray,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Icon(Icons.edit),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
