import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/common/helper/dependencie_injection.dart';
import 'package:realstate/feature/auth/presentation/state/auth_bloc.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/signup_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/app_widget/reactive_text_field.dart';
import '../widgets/auth_button.dart';
import '../widgets/top_image_auth.dart';

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
    return BlocProvider.value(
      value: getIt<AuthBloc>(),
      child: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPage),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AuthButton(text: "Login", func: () {}),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      TextButton(
                        onPressed: () {
                          context.pushNamed(SignupScreen.name);
                        },
                        child: const Text('Create New'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: ReactiveForm(
              formGroup: context.read<AuthBloc>().signInForm,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPage),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const TopImageAuth(text: "Welcome Back"),
                    // const Spacer(),
                    const SizedBox(height: 20),
                    CustomStyleReactiveTextFiled(
                      hintText: "Email",
                      validationMessages: {
                        ValidationMessage.required: (error) => "Required",
                      },
                      formControlName: FormGroupKey.email,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CustomStyleReactiveTextFiled(
                        hintText: "Password",
                        validationMessages: {
                          ValidationMessage.required: (error) => "Required",
                        },
                        formControlName: FormGroupKey.email,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?'),
                      ),
                    ),
                    // const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
