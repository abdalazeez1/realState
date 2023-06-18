import 'package:flutter/material.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../../common/app_widget/drop_down_menu.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';
class ChoseSwimmingPoolsWidget extends StatelessWidget {
  const ChoseSwimmingPoolsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: AdSectionWidget(
        title: "Swimming Pool",
        child: CustomReactiveDropDownField(
          formControlName: FormGroupKey.swimmingPool,
          hint: "SwimmingPool",
          items: ["1","2"],

        )

      ),
    );
  }
}
