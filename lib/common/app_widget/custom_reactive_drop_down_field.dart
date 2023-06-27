import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../constant/constant.dart';

class CustomReactiveDropDownField<T> extends StatelessWidget {
  const CustomReactiveDropDownField({
    super.key, required this.formControlName, this.items,  this.itemsDropDown, required this.hint, this.onTap,
  })  :  assert(items != null || itemsDropDown != null,"should pass items or itemsDropDown ");

  final String formControlName;
  final List<T>? items;
  final String hint;
  final List<DropdownMenuItem<T>>? itemsDropDown;
  final Function(FormControl<T>)? onTap ;
  @override
  Widget build(BuildContext context) {
    return ReactiveDropdownField<T>(
      formControlName: formControlName,
      hint: Text(hint,overflow: TextOverflow.ellipsis,),
      onTap: onTap,
      items: (items?.isNotEmpty ?? false ) ? items!.map((e) => DropdownMenuItem<T>(value: e,child: Text(e.toString()),)).toList():itemsDropDown! ,
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.outline.withOpacity((0.05)),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error, width: 1),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error, width: 1),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        contentPadding: EdgeInsets.only(left: 12, right: 12),
        // prefixIcon: Icon(Icons.keyboard_arrow_down_rounded,
        //     color: (items?.isEmpty ?? true) ? Theme.of(context).colorScheme.primary.withOpacity(0.3) : Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
