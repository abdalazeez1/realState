import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/common/helper/dependencie_injection.dart';
import 'package:realstate/feature/auth/presentation/state/auth_bloc.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/welcom_scree.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/app_widget/app_text_field.dart';
import '../../../../../common/app_widget/reactive_text_field.dart';
import '../../../../../generated/assets.dart';
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
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        body: ReactiveForm(
          formGroup: context.read<AuthBloc>().signInForm,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPage),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TopImageAuth(text: "Welcome Back"),
                  Spacer(),
                  SizedBox(height: 20),
                  CustomStyleReactiveTextFiled(
                    hintText: "Email",
                    validationMessages: {
                      ValidationMessage.required: (error) => "Required",
                    },
                    formControlName: FormGroupKey.email,
                  ),
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
        ),
      ),
    );
  }
}

