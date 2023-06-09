import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/welcom_scree.dart';
import 'package:realstate/feature/base/view/base.dart';

import '../widgets/top_image_auth.dart';

class VerificationScreen extends StatefulWidget {
  static const path = 'verification';
  static const name = 'verification';

  const VerificationScreen({super.key});

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const VerificationScreen();
  }

  @override
  createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPage),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TopImageAuth(text: "Verification"),
              const SizedBox(height: 20),
              Text(
                'Please enter the 4-digit verification code sent to your phone number',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Pinput(
                onCompleted: (pin) => print(pin),
              ),
              const SizedBox(height: 20),
              const Spacer(),
              // Verify Button
              AuthButton(
                  text: "Verify",
                  func: () {
                    context.goNamed(BasePage.name);
                  }),
              const SizedBox(height: 20),
              // Bottom Image with Description
            ],
          ),
        ),
      ),
    );
  }
}
