
import 'package:flutter/material.dart';

import '../../../../common/app_widget/drop_down_menu.dart';
import 'ad_section.dart';

class ChoseGardensWidget extends StatelessWidget {
  const ChoseGardensWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AdSectionWidget(
        title: "Rooms",
        child: AppDropDownMenu<String?>(
          onTap: () {},
          onChange: (text) {
            // selectedPioneerType.value =
            //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
          },
          value: "1",
          hint: "Rooms",
          // validator: (value) => requiredValidator().call(value),
          items: const ["1", "2"],
          onSaved: (text) {},
        ),
      ),
    );
  }
}
