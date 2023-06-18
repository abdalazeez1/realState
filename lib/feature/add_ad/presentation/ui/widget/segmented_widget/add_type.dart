import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/app_widget/reactive_text_field.dart';
import 'package:realstate/feature/add_ad/presentation/state/add_ad_bloc.dart';
import 'package:realstate/feature/add_ad/presentation/ui/widget/ad_section.dart';


class AddTypeWidget extends StatelessWidget {
  const AddTypeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context,f,c) {
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
                    emptySelectionAllowed: true,
                    onSelectionChanged: (p0) {
                      context.read<AddAdBloc>().formGroup.control(FormGroupKey.adType).value = p0.first;
                    },
                    selectedIcon: const Icon(Icons.circle_rounded),
                    selected:  {context.read<AddAdBloc>().formGroup.control(FormGroupKey.adType).value as int?}),
              ),
            ],
          ),
        );
      }
    );
  }
}
