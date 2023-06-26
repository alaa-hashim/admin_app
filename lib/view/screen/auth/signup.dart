import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/signupcontroller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/appexit.dart';
import '../../../core/functions/validater.dart';
import '../../widget/authbutton.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.put(SignUpController());
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: WillPopScope(
        onWillPop: appExit,
        child: GetBuilder<SignUpController>(builder: (controller) {
          return Container(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: controller.formState,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Create your Account",
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        validator: (val) {
                          return inputvalidater(val!, 1, 30, "");
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: ' Name',
                            hintText: 'Enter  Name'),
                        controller: controller.name,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (val) {
                          return inputvalidater(val!, 1, 30, "");
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'Enter Email Address'),
                        controller: controller.email,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        obscureText: true,
                        validator: (val) {
                          return inputvalidater(val!, 1, 30, "");
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter Your Password'),
                        controller: controller.password,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        validator: (val) {
                          return inputvalidater(val!, 1, 30, "");
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone',
                            hintText: 'Enter Phone Number'),
                        controller: controller.phone,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: 230,
                        height: 55,
                        child: MaterialButton(
                          onPressed: () {
                            Future.delayed(Duration.zero, () {
                              controller.signUp();
                            });
                          },
                          textColor: AppColor.white,
                          child: const Text("Register"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SignupButton(
                        onTap: () {
                          controller.goToLogin();
                        },
                        textone: 'Already have account  ',
                        texttwo: 'Login',
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppColor.lightgray,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Coutnue with Accounts ",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: AppColor.lightred,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 150,
                            height: 55,
                            child: MaterialButton(
                              onPressed: () {},
                              textColor: AppColor.red,
                              child: const Text("GOOGLE"),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: AppColor.lightblue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 150,
                            height: 55,
                            child: MaterialButton(
                              onPressed: () {},
                              textColor: AppColor.blue,
                              child: const Text("FACEBOOK"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ));
        }),
      ),
    );
  }
}
