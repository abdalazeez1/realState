import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/signin_screen.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/signup_screen.dart';
import 'package:realstate/feature/base/view/base.dart';

import '../../../../splash/view/splash_screen.dart';
import '../widgets/auth_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const path = '/welcome';
  static const name = 'welcome';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const WelcomeScreen();
  }

  const WelcomeScreen({super.key});

  @override
  createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPage),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LogoAndTitleApp(),
                    const SizedBox(height: 20),
                    Text(
                      'Welcome to Homy',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 30),
                    ),
                    const SizedBox(height: 20),
                    AuthButton(
                        text: 'Create an Account',
                        func: () {
                          context.pushNamed(SignupScreen.name);
                        }),
                    const SizedBox(height: 10),
                    const SizedBox(height: 20),
                    Text(
                      'Already have an account?',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 10),
                    AuthButton(
                        text: 'Login',
                        func: () {
                          context.pushNamed(LoginScreen.name);
                        }),

                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Text(
                            'RO ',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          TextButton(
                            onPressed: () {
                              context.goNamed(BasePage.name);
                            },
                            child: Text(
                              'Continue Without Login',
                              style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'By continuing, you accept our Privacy Policy',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

