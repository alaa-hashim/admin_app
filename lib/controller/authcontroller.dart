// ignore_for_file: avoid_print, prefer_final_fields, unused_catch_clause, unused_field

import 'package:admin_app/core/constant/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;

  var otpController = TextEditingController();
  var numController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  late String phonenumber;
  String verificationId = "";

  @override
  void onInit() {
    otpController = TextEditingController();
    numController = TextEditingController();
    super.onInit();
  }

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    try {
      final authCredential =
          await auth.signInWithCredential(phoneAuthCredential);

      if (authCredential.user != null) {
        Get.offNamed(AppRoute.homepage);
      }
    } on FirebaseAuthException catch (e) {
      print("catch");
    }
  }

  Future<void> verify() async {
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpController.text);

    signInWithPhoneAuthCredential(phoneAuthCredential);
  }

  Future<void> fetchotp() async {
    await auth.verifyPhoneNumber(
      phoneNumber: numController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) async {
        this.verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
