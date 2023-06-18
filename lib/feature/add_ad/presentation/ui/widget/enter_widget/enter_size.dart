import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../common/app_widget/app_text_field.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';
class EnterSizeWidget extends StatelessWidget {
  const EnterSizeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:
      AdSectionWidget(title: "size", child:
      CustomStyleReactiveTextFiled(
        hintText: "size",
        validationMessages: {
          ValidationMessage.required: (error) => "Required",
        },
        prefixIcon: (Icons.price_change),
        formControlName: FormGroupKey.size,
      )
      // AppTextField(prefixIcon: Icon(Icons.price_change), hintText: "size")
      ),
    );
  }
}
