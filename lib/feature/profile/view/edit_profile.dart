import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/app_widget/app_text_field.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/feature/add_ad/view/screen/add_ad_screen.dart';

import '../../../common/app_widget/drop_down_menu.dart';
import '../../add_ad/view/screen/map_screen.dart';
import '../../add_ad/view/widget/ad_section.dart';
import '../../auth/presentation/ui/widgets/auth_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  static const path = 'edit-profile';
  static const name = 'edit-profile';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const EditProfileScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile ")),
      body: ListView(padding: const EdgeInsets.symmetric(horizontal: kPage), children: [
        const AdSectionWidget(title: "FirstNAme", child: AppTextField(hintText: "FirstNAme")),
        const AdSectionWidget(title: "Last Name", child: AppTextField(hintText: "FirstNAme")),
        const AdSectionWidget(title: "Email", child: AppTextField(hintText: "FirstNAme")),
        const AdSectionWidget(title: "Phone", child: AppTextField(hintText: "FirstNAme")),
        Row(
          children: [
            Expanded(
                child: AdSectionWidget(
              title: "Country ",
              child: AppDropDownMenu<String?>(
                onTap: () {},
                onChange: (text) {
                  // selectedPioneerType.value =
                  //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
                },
                value: "vela",
                hint: "Type ",
                // validator: (value) => requiredValidator().call(value),
                items: const ["vela", "appartment"],
                onSaved: (text) {},
              ),
            )),
            const SizedBox(width: 10),
            Expanded(
                child: AdSectionWidget(
              title: "Gender",
              child: AppDropDownMenu<String?>(
                onTap: () {},
                onChange: (text) {
                  // selectedPioneerType.value =
                  //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
                },
                value: "vela",
                hint: "Type ",
                // validator: (value) => requiredValidator().call(value),
                items: const ["vela", "appartment"],
                onSaved: (text) {},
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
        const SizedBox(height: 20,),
        AuthButton(text: "Submit", func: () {})
      ]),
    );
  }
}
