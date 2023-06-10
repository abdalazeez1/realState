import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/common/helper/dependencie_injection.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/verification_screen.dart';
import '../../../../../common/app_widget/reactive_text_field.dart';
import '../../state/auth_bloc.dart';
import '../widgets/auth_button.dart';
import '../widgets/top_image_auth.dart';

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
    return BlocProvider.value(
      value: getIt<AuthBloc>(),
      child: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(kPage),
              child: AuthButton(
                  text: "Sign Up",
                  func: () {
                    context.pushNamed(VerificationScreen.name);
                  }),
            ),
            body: ReactiveForm(
              formGroup: context.read<AuthBloc>().signUpForm,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: kPage),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const TopImageAuth(text: "Glad You're here"),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(
                          child: CustomStyleReactiveTextFiled(
                            hintText: "First Name ",
                            validationMessages: {
                              ValidationMessage.required: (error) => "Required",
                            },
                            formControlName: FormGroupKey.firstName,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: CustomStyleReactiveTextFiled(
                            hintText: "Last Name",
                            validationMessages: {
                              ValidationMessage.required: (error) => "Required",
                            },
                            formControlName: FormGroupKey.lastName,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    CustomStyleReactiveTextFiled(
                      hintText: "Email",
                      validationMessages: {
                        ValidationMessage.required: (error) => "Required",
                      },
                      formControlName: FormGroupKey.email,
                    ),
                    const SizedBox(height: 10),
                    CustomStyleReactiveTextFiled(
                      hintText: "Password",
                      obscureText: true,
                      validationMessages: {
                        ValidationMessage.required: (error) => "Required",
                      },
                      formControlName: FormGroupKey.password,
                    ),
                    const SizedBox(height: 10),
                    CustomStyleReactiveTextFiled(
                      hintText: "Re-enter Password",
                      obscureText: true,
                      validationMessages: {
                        ValidationMessage.required: (error) => "Required",
                      },
                      formControlName: FormGroupKey.submitNewPassword,
                    ),
                    const SizedBox(height: 10),
                    CustomStyleReactiveTextFiled(
                      hintText: "Phone Number",
                      validationMessages: {
                        ValidationMessage.required: (error) => "Required",
                      },
                      formControlName: FormGroupKey.phone,
                    ),
                    const SizedBox(
                      height: 20,
                    )
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
