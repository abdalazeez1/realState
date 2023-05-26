import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/feature/splash/view/splash_screen.dart';

import '../feature/auth/view/signin_screen.dart';
import '../feature/auth/view/signup_screen.dart';
import '../feature/auth/view/welcom_scree.dart';
import '../feature/base/view/base.dart';
import '../feature/home/view/home_screen.dart';

final GoRouter router = GoRouter(
    routes: <RouteBase>[
      ///Splash
      GoRoute(path: Splashscreen.path, name: Splashscreen.name, builder: Splashscreen.pageBuilder),

      ///Base
      GoRoute(path: BasePage.path, name: BasePage.name, builder: BasePage.pageBuilder),

      ///Auth
      GoRoute(path: WelcomeScreen.path, name: WelcomeScreen.name, builder: WelcomeScreen.pageBuilder, routes: [
        GoRoute(path: LoginScreen.path, name: LoginScreen.name, builder: LoginScreen.pageBuilder),
        GoRoute(path: SignupScreen.path, name: SignupScreen.name, builder: SignupScreen.pageBuilder),
      ]),
    ],
    redirect: (context, state) {

    });
