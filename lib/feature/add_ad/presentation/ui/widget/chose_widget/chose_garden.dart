
import 'package:flutter/material.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';

class ChoseGardensWidget extends StatelessWidget {
  const ChoseGardensWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: AdSectionWidget(
        title: "Garden",
        child:
        CustomReactiveDropDownField(
          formControlName: FormGroupKey.garden,
          hint: "Chose garden",
          items: ["1","2"],

        )
      ),
    );
  }
}
