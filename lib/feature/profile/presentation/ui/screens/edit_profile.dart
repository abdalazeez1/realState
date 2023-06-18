import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/app_widget/app_text_field.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/feature/add_ad/presentation/ui/screen/add_ad_screen.dart';
import 'package:realstate/feature/profile/presentation/state/profile_bloc.dart';

import '../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../common/app_widget/drop_down_menu.dart';
import '../../../../../common/app_widget/reactive_text_field.dart';
import '../../../../add_ad/presentation/ui/screen/map_screen.dart';
import '../../../../add_ad/presentation/ui/widget/ad_section.dart';
import '../../../../auth/presentation/ui/widgets/auth_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  static const path = 'edit-profile';
  static const name = 'edit-profile';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const EditProfileScreen();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(),
      child: Builder(builder: (context) {
        return ReactiveForm(
          formGroup: context.read<ProfileBloc>().formGroup,
          child: Scaffold(
            appBar: AppBar(title: const Text("Edit Profile ")),
            body: ListView(padding: const EdgeInsets.symmetric(horizontal: kPage), children: [
              AdSectionWidget(
                  title: "First Name",
                  child: CustomStyleReactiveTextFiled(
                    hintText: "First Name",
                    validationMessages: {
                      ValidationMessage.required: (error) => "Required",
                    },
                    formControlName: FormGroupKey.firstName,
                  )),
              AdSectionWidget(
                  title: "Last Name",
                  child: CustomStyleReactiveTextFiled(
                    hintText: "Last Name",
                    validationMessages: {
                      ValidationMessage.required: (error) => "Required",
                    },
                    formControlName: FormGroupKey.lastName,
                  )),
              AdSectionWidget(
                  title: "Email",
                  child: CustomStyleReactiveTextFiled(
                    hintText: "Email",
                    validationMessages: {
                      ValidationMessage.required: (error) => "Required",
                    },
                    formControlName: FormGroupKey.email,
                  )),
              AdSectionWidget(
                  title: "Phone",
                  child: CustomStyleReactiveTextFiled(
                    hintText: "Phone",
                    validationMessages: {
                      ValidationMessage.required: (error) => "Required",
                    },
                    formControlName: FormGroupKey.phone,
                  )),
              const Row(
                children: [
                  Expanded(
                      child: AdSectionWidget(
                    title: "Country ",
                    child: CustomReactiveDropDownField(
                      formControlName: FormGroupKey.country,
                      hint: "Chose Country",
                      items: ["aleppo", "damas"],
                    ),
                  )),
                  SizedBox(width: 10),
                  Expanded(
                      child: AdSectionWidget(
                    title: "Gender",
                    child: CustomReactiveDropDownField(
                      formControlName: FormGroupKey.gender,
                      hint: "Chose Gender",
                      items: ["female", "male"],
                    ),
                  )),
                ],
              ),
              AdSectionWidget(
                title: "Location",
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(MapScreen.name);
                  },
                  child: const AppTextField(
                    enabled: false,
                    prefixIcon: Icon(Icons.location_city),
                    hintText: "Location",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AuthButton(text: "Submit", func: () {})
            ]),
          ),
        );
      }),
    );
  }
}
