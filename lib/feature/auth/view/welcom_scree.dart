import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/feature/auth/view/signin_screen.dart';
import 'package:realstate/feature/auth/view/signup_screen.dart';
import 'package:realstate/feature/base/view/base.dart';

import '../../../generated/assets.dart';

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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: TextButton(
              onPressed: () {
                context.goNamed(BasePage.name);
              },
              child: const Text(
                'Continue Without Login',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.imagesLogo,
                  height: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome to MyApp',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(SignupScreen.name);
                  },
                  child: const Text('Register'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: const Text('Continue with Google'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Continue with Facebook'),
                ),
                const SizedBox(height: 20),
                const Text('Already have an account?'),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(LoginScreen.name);

                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'By continuing, you accept our Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
