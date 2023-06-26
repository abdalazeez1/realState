import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../../../../../../common/enums/enums.dart';
import '../ad_section.dart';
class RealStateType extends StatelessWidget {
  const RealStateType({
    super.key, this.onTap,
  });
final   Function(FormControl<String>)? onTap;
  @override
  Widget build(BuildContext context) {
    return AdSectionWidget(
      title: "Real State Type",
      child:
      CustomReactiveDropDownField(
        onTap: onTap,
        formControlName: FormGroupKey.realStateType,

        hint: "Chose Real State Type",
        items: TypeRealState.values.map((e) => e.name).toList(),

      )

    );
  }
}
