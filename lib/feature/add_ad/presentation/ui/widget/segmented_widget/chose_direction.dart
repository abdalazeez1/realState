
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/app_widget/reactive_text_field.dart';

import '../../../state/add_ad_bloc.dart';
import '../ad_section.dart';
class ChoseDirectionWidget extends StatelessWidget {
  const ChoseDirectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context,f,c) {
        return AdSectionWidget(
          title: "Direction",
          child: Row(
            children: [
              Expanded(
                child: SegmentedButton<int>(
                    segments: const [
                      ButtonSegment<int>(value: 1, label: Text("label1"), icon: Icon(Icons.circle_outlined)),
                      ButtonSegment<int>(value: 2, label: Text("label2"), icon: Icon(Icons.circle_outlined)),
                      ButtonSegment<int>(value: 3, label: Text("label3"), icon: Icon(Icons.circle_outlined)),
                      ButtonSegment<int>(value: 4, label: Text("label4"), icon: Icon(Icons.circle_outlined)),
                    ],
                    multiSelectionEnabled: true,
                    emptySelectionAllowed: true,
                    onSelectionChanged: (c){
                      context.read<AddAdBloc>().formGroup.control(FormGroupKey.direction).value= c  ;
                    },
                    selectedIcon: const Icon(Icons.circle_rounded, color: Colors.green),
                    selected: context.read<AddAdBloc>().formGroup.control(FormGroupKey.direction).value as Set<int>? ?? {}),
              ),
            ],
          ),
        );
      }
    );
  }
}
