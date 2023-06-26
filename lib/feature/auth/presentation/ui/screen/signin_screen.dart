import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/common/helper/dependencie_injection.dart';
import 'package:realstate/common/network/page_state/bloc_status.dart';
import 'package:realstate/feature/auth/presentation/state/auth_bloc.dart';
import 'package:realstate/feature/auth/presentation/ui/screen/signup_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realstate/feature/home/view/home_screen.dart';
import '../../../../../common/app_widget/reactive_text_field.dart';
import '../../../../base/view/base.dart';
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
            bottomNavigationBar: BlocSelector<AuthBloc, AuthState, BlocStatus>(
              selector: (state) =>state.loginStatus,
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPage),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AuthButton(text: "Login", func: () {
                        context.read<AuthBloc>().add(LoginAuth(onSuccess: (){
                          context.goNamed(BasePage.name);
                        }));
                      }, isLoading:state.isLoading()),
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
                );
              },
            ),
            body: ReactiveForm(
              formGroup: context
                  .read<AuthBloc>()
                  .signInForm,
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
                          ValidationMessage.minLength: (error) => "should be long than 6 character",
                        },
                        formControlName: FormGroupKey.password,
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
