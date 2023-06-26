import 'package:flutter/material.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';

class ChoseFloorWidget extends StatelessWidget {
  const ChoseFloorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AdSectionWidget(
        title: "Floor",
        child:
        CustomReactiveDropDownField(
          formControlName: FormGroupKey.floor,
          hint: "Chose Fllor",
          items: ["2", "4"],

        )

      ),
    );
  }
}
