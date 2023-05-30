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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await check();
    });
  }

  Future<void> check() async {
    await Future.delayed(Duration(seconds: 3));
    if (mounted) {
      context.goNamed(WelcomeScreen.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            LogoAndTitleApp(),
            const Spacer(),
             Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:  const EdgeInsets.only(bottom: 20),
                child:  Text(
                  'Made with love ❤',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogoAndTitleApp extends StatelessWidget {
  const LogoAndTitleApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.imagesLogo),
        const SizedBox(height: 20),
        TitleApp(),
      ],
    );
  }
}

class TitleApp extends StatelessWidget {
  const TitleApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Homy',
      style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Theme.of(context).colorScheme.primary),
    );
  }
}
