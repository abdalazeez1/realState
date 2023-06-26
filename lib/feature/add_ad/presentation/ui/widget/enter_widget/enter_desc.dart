import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';
class EnterDescWidget extends StatelessWidget {
  const EnterDescWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  AdSectionWidget(
      title: "Descriptions",
      child:
      CustomStyleReactiveTextFiled(
        hintText: "Descriptions",
        validationMessages: {
          ValidationMessage.required: (error) => "Required",
        },
          maxLine: 4,
        prefixIcon: (Icons.description),
        formControlName: FormGroupKey.description,
      )

    );
  }
}
