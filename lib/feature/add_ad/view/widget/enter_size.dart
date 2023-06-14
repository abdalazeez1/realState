import 'package:flutter/material.dart';

import '../../../../common/app_widget/app_text_field.dart';
import 'ad_section.dart';
class EnterSizeWidget extends StatelessWidget {
  const EnterSizeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child:
      AdSectionWidget(title: "size", child: AppTextField(prefixIcon: Icon(Icons.price_change), hintText: "size")),
    );
  }
}
