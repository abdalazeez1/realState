import 'package:flutter/material.dart';

import '../../../../common/app_widget/app_text_field.dart';
import 'ad_section.dart';

class AddTitleWidget extends StatelessWidget {
  const AddTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AdSectionWidget(
      title: "Add Title",
      child: AppTextField(prefixIcon: Icon(Icons.abc), hintText: "Add Title"),
    );
  }
}