import 'package:flutter/material.dart';
import '../../core/constant/color.dart';
import '../widget/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(child: Drawerx()),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Expanded(
              flex: 8,
              child: Container(
                  decoration: const BoxDecoration(color: AppColor.blue),
                  child: const Text("Background"))),
          const Expanded(flex: 1, child: Text("Background)")),
          const Expanded(flex: 1, child: Text("Background)")),
        ]),
      ),
    );
  }
}
