import 'package:flutter/material.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../../common/app_widget/drop_down_menu.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';
class ChoseSectionWidget extends StatelessWidget {
  const ChoseSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: AdSectionWidget(
        title: "Section",
        child:
        CustomReactiveDropDownField(
          formControlName: FormGroupKey.section,
          hint: "Chose Section",
          items: ["2","4"],

        )
      ),
    );
  }
}
