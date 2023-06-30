import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void login() async {
    if (formState.currentState.validate()) {
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );

        if (userCredential.user != null) {
          Get.snackbar('Login Successful', 'You have been logged in.',
              snackPosition: SnackPosition.BOTTOM);
          // Navigate to home screen
          Get.offAllNamed(AppRoute.home);
        }
      } catch (e) {
        Get.snackbar('Login Failed', 'Email or password is incorrect.',
            snackPosition: SnackPosition.BOTTOM);
        print('Login error: $e');
      }
    }
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }

  goToSignUp() {
    Get.toNamed(AppRoute.signup);
  }
}
