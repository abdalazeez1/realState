import 'package:flutter/material.dart';
import 'package:realstate/feature/add_ad/view/widget/ad_section.dart';


class AddTypeWidget extends StatelessWidget {
  const AddTypeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdSectionWidget(
      title: "Add Type",
      child: Row(
        children: [
          Expanded(
            child: SegmentedButton(
                segments: const [
                  ButtonSegment<int>(value: 1, label: Text("label1"), icon: Icon(Icons.circle_outlined)),
                  ButtonSegment<int>(value: 2, label: Text("label2"), icon: Icon(Icons.circle_outlined)),
                ],
                selectedIcon: const Icon(Icons.circle_rounded),
                selected: const {2}),
          ),
        ],
      ),
    );
  }
}
