// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/constant/routes.dart';
import '../model/user.dart';

class SignUpController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();

  void signUp() async {
    if (formState.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await auth.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );

        // Save user data to Firestore
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user?.uid)
            .set(
              Users(
                id: userCredential.user?.uid ?? '',
                email: email.text,
                name: name.text,
                phone: phone.text,
              ).toMap(),
            );
        Get.showSnackbar(
          const GetSnackBar(
            message: 'User Registered Successfully',
            duration: Duration(seconds: 3),
            snackPosition: SnackPosition.TOP,
          ),
        );
        Get.offNamed(AppRoute.login);
        print('User signed up: ${userCredential.user?.email}');
      } catch (e) {
        print('Sign-up error: $e');
      }
    }
  }

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();

    super.onInit();
  }

  goToLogin() {
    Get.offNamed(AppRoute.login);
  }
}
