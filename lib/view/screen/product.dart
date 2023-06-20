// ignore_for_file: use_key_in_widget_constructors

import 'package:admin_app/controller/homecontroller.dart';
import 'package:admin_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/product.dart';

class Items extends StatelessWidget {
  const Items({Key? key});

  @override
  Widget build(BuildContext context) {
    HomeControllermpl controller = Get.put(HomeControllermpl());
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
                      product.productName!.substring(0, 14),
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
                    left: 120, top: 10, bottom: 12, right: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.edit,
                      color: AppColor.darkgray,
                    ),
                    Padding(
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
