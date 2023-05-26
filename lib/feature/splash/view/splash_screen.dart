import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/feature/auth/view/welcom_scree.dart';

import '../../../generated/assets.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  static const path = '/';
  static const name = 'splash';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const Splashscreen();
  }

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      context.goNamed(WelcomeScreen.name);
    });
  }

 Future<void> check() async {
    await Future.delayed(Duration(seconds: 3));
    print("not ");
    if (mounted) {
      print("not in");

      context.goNamed(WelcomeScreen.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset(Assets.imagesLogo),
      const SizedBox(height: 20),
      const Text(
        'Your image description',
        style: TextStyle(fontSize: 16),
      ),
      const Spacer(),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              'Made with love',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ))
    ])));
  }
}
