import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/constant.dart';
import 'package:realstate/feature/auth/view/welcom_scree.dart';

import '../../../common/app_widget/app_text_field.dart';
import '../../../generated/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const path = 'login';
  static const name = 'login';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }

  @override
  createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPage),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TopImageAuth(text: "Welcome Back"),
              Spacer(),
              SizedBox(height: 20),
              AppTextField(hintText: "Email"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AppTextField(hintText: "Password", obscure: true, maxLines: 1),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?'),
                ),
              ),
              Spacer(flex: 2),
              AuthButton(text: "Login", func: () {}),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  TextButton(
                    onPressed: () {},
                    child: Text('Create New'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopImageAuth extends StatelessWidget {
  const TopImageAuth({
    super.key, required this.text,
  });
final String text ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 75),
          child: SvgPicture.asset(
            Assets.imagesLogo,
            height: 100,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.displaySmall?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
      ],
    );
  }
}
