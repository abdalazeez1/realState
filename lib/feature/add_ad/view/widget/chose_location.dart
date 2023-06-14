import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/app_widget/app_text_field.dart';
import '../screen/map_screen.dart';
import 'ad_section.dart';
class ChoseLocationWidget extends StatelessWidget {
  const ChoseLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AdSectionWidget(
        title: "Location",
        child: GestureDetector(
          onTap: () {
            context.pushNamed(MapScreen.name);
          },
          child: const AppTextField(
            enabled: false,
            prefixIcon: Icon(Icons.location_city),
            hintText: "Location",
          ),
        ),
      ),
    );
  }
}
