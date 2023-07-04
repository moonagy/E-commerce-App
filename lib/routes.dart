import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/middleware/appmiddleware.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/view/screen/authentication/cheek_email.dart';
import 'package:ecommerce/view/screen/authentication/forgetPassword/forgetpassword.dart';
import 'package:ecommerce/view/screen/authentication/login.dart';
import 'package:ecommerce/view/screen/authentication/signup.dart';
import 'package:ecommerce/view/screen/browse_page.dart';
import 'package:ecommerce/view/screen/home.dart';
import 'package:ecommerce/view/screen/home_page.dart';
import 'package:ecommerce/view/screen/langeuge.dart';
import 'package:ecommerce/view/screen/onborading_screen.dart';
import 'package:ecommerce/view/screen/orderhistory_page.dart';
import 'package:ecommerce/view/screen/profile.dart';
import 'package:get/get.dart';
import 'view/screen/authentication/forgetPassword/resetpassword.dart';
import 'view/screen/authentication/forgetPassword/verifycode_sign_up.dart';
import 'view/screen/authentication/success_signup.dart';
import 'view/screen/authentication/forgetPassword/successresetpassword.dart';
import 'view/screen/authentication/forgetPassword/verifycode.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name:'/' , page: () => const languageScreen(),middlewares:[
    appMiddleWare()
  ]),
  GetPage(name:'/' , page: () => const testScreen()),
  // ============== Auth ================================== //
  GetPage(name:appRoutes.login , page: () => const Login()),
  GetPage(name:appRoutes.signup , page: () => const Signup()),
  GetPage(name:appRoutes.cheekEmail , page: () => const cheekEmailSignUp()),
  GetPage(name:appRoutes.forgetPassword , page: () => const forgetPassword()),
  GetPage(name:appRoutes.verifyCode , page: () => const verifyCode()),
  GetPage(name:appRoutes.verifyCodeSignUp , page: () => const verifyCodeSignUp()),
  GetPage(name:appRoutes.resetPassword , page: () => const resetPassword()),
  GetPage(name:appRoutes.successResetPassword , page: () => const successResetPassword()),
  GetPage(name:appRoutes.successSignUp , page: () => const successSignUp()),
  GetPage(name:appRoutes.successSignUp , page: () => const successSignUp()),
  // =========================== onBoarding ================================//
  GetPage(name:appRoutes.onBorading , page: () => const onBoradingScreen()),
  // =================== Home ============================================= //
  GetPage(name:appRoutes.HomePage , page: () => const HomePage()),
  GetPage(name:appRoutes.Home , page: () => const Home()),
  GetPage(name:appRoutes.browsePage , page: () => const browsePage()),
  GetPage(name:appRoutes.orderHistory , page: () => const orderHistory()),
  GetPage(name:appRoutes.Profile , page: () => const Profile()),
];
