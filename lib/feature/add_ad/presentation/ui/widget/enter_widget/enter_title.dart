import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../common/app_widget/app_text_field.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';

class AddTitleWidget extends StatelessWidget {
  const AddTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdSectionWidget(
      title: "Add Title",
      child: CustomStyleReactiveTextFiled(
        hintText: "Add Title",
        validationMessages: {
          ValidationMessage.required: (error) => "Required",
        },
        prefixIcon: (Icons.abc),
        formControlName: FormGroupKey.title,
      ),
    );
  }
}
