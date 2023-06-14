import 'package:flutter/material.dart';
import '../../../../common/app_widget/app_text_field.dart';

import '../../../../common/app_widget/drop_down_menu.dart';
import 'ad_section.dart';
class EnterDescWidget extends StatelessWidget {
  const EnterDescWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AdSectionWidget(
      title: "Descriptions",
      child: AppTextField(
        maxLines: 4,
        prefixIcon: Icon(Icons.description),
        hintText: "Descriptions",
      ),
    );
  }
}
