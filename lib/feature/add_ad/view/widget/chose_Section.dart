import 'package:flutter/material.dart';

import '../../../../common/app_widget/drop_down_menu.dart';
import 'ad_section.dart';
class ChoseSectionWidget extends StatelessWidget {
  const ChoseSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AdSectionWidget(
        title: "Floor",
        child: AppDropDownMenu<String?>(
          onTap: () {},
          onChange: (text) {
            // selectedPioneerType.value =
            //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
          },
          value: "2",
          hint: "Floors ",
          // validator: (value) => requiredValidator().call(value),
          items: const ["2", "4"],
          onSaved: (text) {},
        ),
      ),
    );
  }
}
