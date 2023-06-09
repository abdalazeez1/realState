import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/signin_screen.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/signup_screen.dart';
import 'package:realstate/feature/base/view/base.dart';

import '../../../../../generated/assets.dart';
import '../../../../splash/view/splash_screen.dart';

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
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: const Text('Continue with Google'),
                    // ),
                    // const SizedBox(height: 10),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: const Text('Continue with Facebook'),
                    // ),
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

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text,
    required this.func,
  });

  final String text;

  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16)))),
              onPressed: func,
              child: Text(text),
            ),
          ),
        ),
      ],
    );
  }
}
