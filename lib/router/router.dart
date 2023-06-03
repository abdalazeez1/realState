import 'package:go_router/go_router.dart';
import 'package:realstate/feature/splash/view/splash_screen.dart';

import '../feature/add_ad/view/add_ad_screen.dart';
import '../feature/add_ad/view/map_screen.dart';
import '../feature/auth/view/signin_screen.dart';
import '../feature/auth/view/signup_screen.dart';
import '../feature/auth/view/verification_screen.dart';
import '../feature/auth/view/welcom_scree.dart';
import '../feature/base/view/base.dart';
import '../feature/notification/view/notification.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  ///Splash
  GoRoute(path: Splashscreen.path, name: Splashscreen.name, builder: Splashscreen.pageBuilder),

  ///Base
  GoRoute(path: BasePage.path, name: BasePage.name, builder: BasePage.pageBuilder, routes: [
    GoRoute(path: NotificationScreen.path, name: NotificationScreen.name, builder: NotificationScreen.pageBuilder),
    GoRoute(path: AddAdsScreen.path, name: AddAdsScreen.name, builder: AddAdsScreen.pageBuilder, routes: [
      GoRoute(path: MapScreen.path, name: MapScreen.name, builder: MapScreen.pageBuilder),
    ]),
  ]),

  ///Auth
  GoRoute(path: WelcomeScreen.path, name: WelcomeScreen.name, builder: WelcomeScreen.pageBuilder, routes: [
    GoRoute(path: LoginScreen.path, name: LoginScreen.name, builder: LoginScreen.pageBuilder),
    GoRoute(path: SignupScreen.path, name: SignupScreen.name, builder: SignupScreen.pageBuilder, routes: [
      GoRoute(path: VerificationScreen.path, name: VerificationScreen.name, builder: VerificationScreen.pageBuilder),
    ]),
  ]),
], redirect: (context, state) {});
