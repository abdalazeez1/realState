import 'package:flutter/material.dart';

import '../../../../common/app_widget/drop_down_menu.dart';
import 'ad_section.dart';
class ChoseSpecificationWidget extends StatelessWidget {
  const ChoseSpecificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdSectionWidget(
      title: "Direction",
      child: Row(
        children: [
          Expanded(
            child: SegmentedButton(
                segments: const [
                  ButtonSegment<int>(value: 1, label: Text("label1"), icon: Icon(Icons.circle_outlined)),
                  ButtonSegment<int>(value: 2, label: Text("label2"), icon: Icon(Icons.circle_outlined)),
                  ButtonSegment<int>(value: 3, label: Text("label3"), icon: Icon(Icons.circle_outlined)),
                  ButtonSegment<int>(value: 4, label: Text("label4"), icon: Icon(Icons.circle_outlined)),
                ],
                multiSelectionEnabled: true,
                selectedIcon: const Icon(Icons.circle_rounded, color: Colors.green),
                selected: const {1, 2}),
          ),
        ],
      ),
    );
  }
}
