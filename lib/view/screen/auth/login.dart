import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/authcontroller.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter valid number'),
              controller: controller.numController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter valid password'),
              controller: controller.otpController,
            ),
          ),
          TextButton(
            onPressed: () {
              controller.fetchotp();
            },
            child: const Text("Fetch OTP"),
          ),
          TextButton(
              onPressed: () {
                controller.verify();
              },
              child: const Text("Send"))
        ],
      ),
    );
  }
}
