import 'package:flutter/material.dart';

import '../../../../common/app_widget/drop_down_menu.dart';
import 'ad_section.dart';
class RealStateType extends StatelessWidget {
  const RealStateType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdSectionWidget(
      title: "Real State Type",
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
    );
  }
}
