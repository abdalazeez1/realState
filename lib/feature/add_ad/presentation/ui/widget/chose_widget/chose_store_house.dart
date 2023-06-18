import 'package:flutter/material.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../../common/app_widget/drop_down_menu.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';
class ChoseStoreHouseWidget extends StatelessWidget {
  const ChoseStoreHouseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AdSectionWidget(
      title: "Store House",
      child:
      CustomReactiveDropDownField(
        formControlName: FormGroupKey.storeHouse,
        hint: "Chose Store House",
        items: ["Aleppo","damas","idlib"],

      )

    );
  }
}
