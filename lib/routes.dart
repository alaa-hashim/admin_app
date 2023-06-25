//import 'package:admin_app/core/constant/routes.dart';
//import 'package:admin_app/core/middleware/middleware.dart';
//import 'package:admin_app/view/screen/auth/forgetpassword.dart';
//import 'package:admin_app/view/screen/auth/login.dart';
//import 'package:admin_app/view/screen/auth/resstpassword.dart';
//import 'package:admin_app/view/screen/auth/signup.dart';
//import 'package:admin_app/view/screen/auth/successpage.dart';
//import 'package:admin_app/view/screen/auth/verfiycode.dart';
//import 'package:admin_app/view/screen/homepage.dart';
//import 'package:admin_app/view/screen/lang.dart';
//import 'package:admin_app/view/screen/navbarscreen.dart';
//import 'package:admin_app/view/screen/onboarding.dart';
//import 'package:admin_app/view/screen/items.dart';
//import 'package:admin_app/view/screen/productdetils.dart';
//import 'package:admin_app/view/screen/subcategory.dart';
import 'package:admin_app/view/screen/home.dart';
import 'package:admin_app/view/screen/menu.dart';
import 'package:admin_app/view/widget/editcategory.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
//import 'package:admin_app/view/screens/home.dart';
//import 'package:admin_app/view/screens/product/productdetail.dart';
//import 'package:admin_app/view/screens/product/productscreen.dart';
//import 'package:admin_app/view/screens/subcategory.dart';

import 'core/constant/routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const Menu(),
  ),
  //GetPage(name: AppRoute.login, page: () => const Login()),
  //GetPage(name: AppRoute.signup, page: () => const Signup()),
  //GetPage(
  //name: AppRoute.frogetpassword,
  //page: () => const Forgetpassword(),
  //),
  //GetPage(
  //name: AppRoute.resetpassword,
  //page: () => const Resetpassword(),
  //),
  //GetPage(
  //name: AppRoute.verfiycode,
  //page: () => const Verfiycode(),
  //),
  //GetPage(
  //name: AppRoute.successpage,
  //page: () => const Successpage(),
  //),
  //GetPage(
  // name: AppRoute.onboadring,
  //page: () => const OnBoarding(),
  //),
  //GetPage(
  //name: AppRoute.bottomNavigationBar,
  //page: () => const Navr(),
  //binding: BottomNavigationBinding()),
  GetPage(
    name: AppRoute.homepage,
    page: () => const Home(),
  ),
  // GetPage(
  //  name: AppRoute.items,
  // page: () => const Productscreen(),
  //),
  GetPage(
    name: AppRoute.editcategory,
    page: () => const Editcategory(),
  ),
  //GetPage(
  // name: AppRoute.subcategory,
  // page: () => const Subcategory(),
  // )
];
