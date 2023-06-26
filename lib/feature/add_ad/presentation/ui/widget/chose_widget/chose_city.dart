import 'package:flutter/material.dart';
import 'package:realstate/common/app_widget/reactive_text_field.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../ad_section.dart';

class ChoseCityWidget extends StatelessWidget {
  const ChoseCityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AdSectionWidget(
      title: "City",
      child: CustomReactiveDropDownField(
        formControlName: FormGroupKey.city,
        hint: "Chose city",
        items: ["Aleppo","damas","idlib"],

      ),
     
    );
  }
}

