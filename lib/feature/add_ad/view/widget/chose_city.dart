import 'package:flutter/material.dart';

import '../../../../common/app_widget/drop_down_menu.dart';
import 'ad_section.dart';

class ChoseCityWidget extends StatelessWidget {
  const ChoseCityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdSectionWidget(
      title: "City",
      child: AppDropDownMenu<String?>(
        onTap: () {},
        onChange: (text) {
          // selectedPioneerType.value =
          //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
        },
        value: "Aleppo",
        hint: "City ",
        // validator: (value) => requiredValidator().call(value),
        items: const ["Aleppo", "Idlib"],
        onSaved: (text) {},
      ),
    );
  }
}
