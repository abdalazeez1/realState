import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/constant.dart';
import 'package:realstate/feature/auth/view/signin_screen.dart';
import 'package:realstate/feature/auth/view/verification_screen.dart';
import 'package:realstate/feature/auth/view/welcom_scree.dart';

import '../../../common/app_widget/app_text_field.dart';
import '../../../generated/assets.dart';

class SignupScreen extends StatefulWidget {
  static const path = 'signup';
  static const name = 'signup';

  const SignupScreen({super.key});

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const SignupScreen();
  }

  @override
  createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPage),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TopImageAuth(text: "Glad You're here"),
              const SizedBox(height: 40),
              const Row(
                children: [
                  Expanded(
                    child: AppTextField(hintText: "First Name"),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: AppTextField(hintText: "Last Name"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const AppTextField(hintText: "Email"),
              const SizedBox(height: 10),
              const AppTextField(hintText: "Password", obscure: true),
              const SizedBox(height: 10),
              const AppTextField(hintText: "Re-enter Password", obscure: true),
              const SizedBox(height: 10),
              const AppTextField(hintText: "Phone Number"),
              const Spacer(),
              AuthButton(text: "Sign Up", func: () {
                context.pushNamed(VerificationScreen.name);
              }),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
