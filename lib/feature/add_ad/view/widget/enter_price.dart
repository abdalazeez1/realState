import 'package:flutter/material.dart';

import '../../../../common/app_widget/app_text_field.dart';
import 'ad_section.dart';
class EnterPriceWidget extends StatelessWidget {
  const EnterPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child:
      AdSectionWidget(title: "Price", child: AppTextField(prefixIcon: Icon(Icons.price_change), hintText: "price")),
    );
  }
}
