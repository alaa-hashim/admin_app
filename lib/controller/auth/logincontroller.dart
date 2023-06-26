// ignore_for_file: avoid_print

import 'package:admin_app/core/constant/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  GlobalKey<FormState> fromstate1 = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );

      print('User logged in: ${userCredential.user?.email}');
    } catch (e) {
      print('Login error: $e');
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    login();
    super.onInit();
  }

  goToSignUp() {
    Get.toNamed(AppRoute.signup);
  }
}
