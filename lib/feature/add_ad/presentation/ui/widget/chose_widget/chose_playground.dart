import 'package:flutter/material.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../../common/app_widget/drop_down_menu.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';
class ChosePlaygroundWidget extends StatelessWidget {
  const ChosePlaygroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: AdSectionWidget(
        title: "Playground",
        child:
        CustomReactiveDropDownField(
          formControlName: FormGroupKey.city,
          hint: "Playground",
          items: ["1", "2"],

        )


      ),
    );
  }
}
