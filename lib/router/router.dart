import 'package:go_router/go_router.dart';
import 'package:realstate/feature/ad_details/presentation/ui/screens/ad_detalis.dart';
import 'package:realstate/feature/favorite/presentation/ui/screen/favorite_screen.dart';
import 'package:realstate/feature/splash/view/splash_screen.dart';

import '../feature/add_ad/presentation/ui/screen/add_ad_screen.dart';
import '../feature/add_ad/presentation/ui/screen/map_screen.dart';
import '../feature/auth/presentation/ui/screen/signin_screen.dart';
import '../feature/auth/presentation/ui/screen/signup_screen.dart';
import '../feature/auth/presentation/ui/screen/verification_screen.dart';
import '../feature/auth/presentation/ui/screen/welcom_scree.dart';
import '../feature/base/view/base.dart';
import '../feature/home/presentation/ui/screen/home_screen.dart';
import '../feature/notification/view/notification.dart';
import '../feature/profile/presentation/ui/screens/edit_profile.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  ///Splash
  GoRoute(path: Splashscreen.path, name: Splashscreen.name, builder: Splashscreen.pageBuilder),

  ///Base
  GoRoute(path: BasePage.path, name: BasePage.name, builder: BasePage.pageBuilder, routes: [
    GoRoute(path: HomeScreen.path, name: HomeScreen.name, builder: HomeScreen.pageBuilder, routes: [
      GoRoute(path: DetailScreen.path, name: DetailScreen.name, builder: DetailScreen.pageBuilder),
    ]),
    GoRoute(path: FavoriteScreen.path, name: FavoriteScreen.name, builder: FavoriteScreen.pageBuilder),
    GoRoute(path: NotificationScreen.path, name: NotificationScreen.name, builder: NotificationScreen.pageBuilder),
    GoRoute(path: EditProfileScreen.path, name: EditProfileScreen.name, builder: EditProfileScreen.pageBuilder),
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
