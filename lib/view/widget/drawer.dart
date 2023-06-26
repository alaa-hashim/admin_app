import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homecontroller.dart';
import '../../core/constant/color.dart';

class Drawerx extends StatelessWidget {
  const Drawerx({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllermpl controller = Get.put(HomeControllermpl());
    return Container(
      color: AppColor.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: AppColor.black),
            child: SizedBox(
                width: double.infinity,
                child: Text(
                  "aaa",
                  style: TextStyle(color: AppColor.white),
                )),
          ),
          InkWell(
            onTap: () {
              controller.goToHome();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.home),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Home"),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          InkWell(
            onTap: () {
              controller.goToMenu();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.restaurant_menu),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Menu"),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.home),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Home"),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.home),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Home"),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          InkWell(
            onTap: () => controller.gotoSettings(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.settings),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("settings"),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
