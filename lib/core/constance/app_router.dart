import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/presentation/user_interface/screens/home_hub.dart';

import '../../presentation/user_interface/screens/auth_screens/login_screen.dart';
import '../../presentation/user_interface/screens/auth_screens/signup_screen.dart';
import '../../presentation/user_interface/screens/reset_password/forget_password.dart';
import '../../presentation/user_interface/screens/reset_password/send_code.dart';

class Routes {
  static const String login = "/login";
  static const String skipLogin = "/skipLogin";
  static const String signUp = "/SignupScreen";
  static const String login_signup = "/login_signup";
  static const String ForgetPass = "/ForgetPass";
  static const String SendCode = "/SendCode";
  static const String home = "/home";
  static const String forgetPassword = "/forgetPassword";
  static const String sendOTPCode = "/sendOTPCode";
  static const String changePassword = "/changePassword";
  static const String internships = "/internships";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        if (Platform.isWindows) {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        }
      case Routes.login:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const HomeHub());
        }
      case Routes.skipLogin:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const HomeHub());
        }

      case Routes.login:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const HomeHub());
        }
      case Routes.signUp:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const SignupScreen());
        }
      case Routes.login_signup:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const SignupScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        }
      case Routes.ForgetPass:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        } else {
          return MaterialPageRoute(builder: (_) => const ForgetPass());
        }
        case Routes.SendCode:
        if (kIsWeb) {
          return MaterialPageRoute(builder: (_) => const ForgetPass());
        } else {
          return MaterialPageRoute(builder: (_) => const SendCode());
        }
      //
      //   case Routes.forgetPassword:
      //     if (kIsWeb) {
      //       return MaterialPageRoute(builder: (_) => const ForgetPasswordWeb());
      //     } else {
      //       return MaterialPageRoute(builder: (_) => const ForgetPassword());
      //     }
      //
      //   case Routes.sendOTPCode:
      //     if (kIsWeb) {
      //       return MaterialPageRoute(builder: (_) => const SendOTPCodeWeb());
      //     } else {
      //       return MaterialPageRoute(builder: (_) => const SendOTPCode());
      //     }
      //
      //   case Routes.changePassword:
      //     if (kIsWeb) {
      //       return MaterialPageRoute(builder: (_) => const ChangePasswordWeb());
      //     } else {
      //       return MaterialPageRoute(builder: (_) => const ChangePassword());
      //     }
      //   case Routes.internships:
      //     if (kIsWeb) {
      //       return MaterialPageRoute(
      //           builder: (_) => const InternshipsScreenWeb());
      //     } else {
      //       return MaterialPageRoute(
      //           builder: (_) => const InternshipsScreenWeb());
      //     }
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
