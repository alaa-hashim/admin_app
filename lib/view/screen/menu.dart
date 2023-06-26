import 'package:admin_app/view/screen/product.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../widget/drawer.dart';
import 'categroy.dart';
import 'subcategory.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(backgroundColor: AppColor.blue, child: Drawerx()),
        body: DefaultTabController(
          length: 3,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColor.lightblue,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                height: 60,
                child: const TabBar(
                    indicator: BoxDecoration(
                        color: AppColor.blue,
                        border: Border(
                          left: BorderSide(
                            width: 1,
                            color: AppColor.blue,
                          ),
                          right: BorderSide(
                            width: 1,
                            color: AppColor.blue,
                          ),
                          top: BorderSide(
                            width: 1,
                            color: AppColor.blue,
                          ),
                          bottom: BorderSide(
                            width: 1,
                            color: AppColor.blue,
                          ),
                        )),
                    tabs: [
                      Tab(
                        child: Text(
                          "CATEGORIES",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "SUBCATEGORIES",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "ITEMS",
                        ),
                      ),
                    ]),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Cats(),
                  Subcategory(),
                  Items(),
                ],
              ),
            )
          ]),
        ));
  }
}
