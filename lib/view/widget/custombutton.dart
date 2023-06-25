// ignore_for_file: must_be_immutable

import 'package:admin_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomBuottn extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  void Function()? onpressed;
  final Text text;
  CustomBuottn(
      {super.key,
      required this.height,
      required this.width,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      margin: const EdgeInsets.only(bottom: 30),
      height: height,
      width: width,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: color,
          onPressed: onpressed,
          color: color,
          child: text),
    );
  }
}
