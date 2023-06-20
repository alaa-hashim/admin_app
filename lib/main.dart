import 'package:admin_app/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/inibindings.dart';

import 'core/localization/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      getPages: routes,
      initialBinding: Inibindings(),
    );
  }
}
