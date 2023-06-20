import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DrawerHeader(
                child: Container(
              height: 240,
              width: double.infinity,
              color: Colors.amberAccent,
              child: const Text("aaa"),
            )),
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
          ],
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
                color: AppColor.lightblue,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "CATEGORIES",
                  ),
                ),
                Text(
                  "SUBCATEGORIES",
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("ITEMS"),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
