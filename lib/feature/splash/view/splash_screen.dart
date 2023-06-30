import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/helper/dependencie_injection.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/welcom_scree.dart';
import 'package:realstate/feature/base/view/base.dart';

import '../../../common/service/storage/i_storage_service.dart';
import '../../../common/service/storage/storage_service.dart';
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
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      if (getIt<IStorageService>().registeredUser) {
        context.goNamed(BasePage.name);
      } else {
        context.goNamed(WelcomeScreen.name);
      }
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
            const LogoAndTitleApp(),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
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
        const TitleApp(),
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