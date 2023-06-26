import 'package:flutter/material.dart';

import '../../../../../../common/app_widget/custom_reactive_drop_down_field.dart';
import '../../../../../../common/app_widget/reactive_text_field.dart';
import '../ad_section.dart';

class ChoseRoomWidget extends StatelessWidget {
  const ChoseRoomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: AdSectionWidget(
          title: "Rooms",
          child: CustomReactiveDropDownField(
            formControlName: FormGroupKey.rooms,
            hint: "Chose Rooms",
            items: ["1", "2"],
          )),
    );
  }
}
