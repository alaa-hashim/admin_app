import 'package:admin_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class Showmodel extends StatelessWidget {
  final Text? title;
  final String? nameEn;
  final String? nameAr;
  final String? detail;
  final String? detailar;
  final String? price;
  final String? hinttext;
  final String? labeltext;
  final IconData? iconData;
  final TextEditingController? mycontroller;
  // final String? Function(String?) valid;
  //final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  final void Function()? onpress;

  const Showmodel(
      {super.key,
      required this.title,
      this.nameEn,
      this.nameAr,
      this.detail,
      this.detailar,
      this.price,
      this.onpress,
      this.hinttext,
      this.labeltext,
      this.iconData,
      this.mycontroller,
      //required this.valid,
      // required this.isNumber,
      this.obscureText,
      this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bg,
      child: Column(
        children: [
          Container(
              height: 45,
              width: double.infinity,
              color: AppColor.lightgray,
              child: Center(child: title)),
        ],
      ),
    );
  }
}
