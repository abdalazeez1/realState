import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'dart:collection';

import '../constant/constant.dart';
class AppDropDownMenu<T> extends StatefulWidget {
  const AppDropDownMenu({
    this.items,
    this.onChange,
    this.onSaved,
    this.onTap,
    this.validator,
    this.hint,
    this.menuMaxHeight,
    this.icon,
    this.focusNode,
    Key? key,
    this.value, this.textAlign,
  }) : super(key: key);

  final ValueChanged? onChange;
  final FormFieldSetter? onSaved;
  final FormFieldValidator? validator;
  final VoidCallback? onTap;
  final List<T>? items;
  final String? hint;
  final double? menuMaxHeight;
  final Widget? icon;
  final FocusNode? focusNode;
  final T? value;
  final TextAlign? textAlign ;
  @override
  State<AppDropDownMenu> createState() => _AppDropDownMenuState();
}

class _AppDropDownMenuState<T> extends State<AppDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      isExpanded: true,
      items: widget.items?.mapIndexed((i,e) => DropdownMenuItem<T>(
          value: e, child: FittedBox(child: Text(

           e is String ? e : e.name, style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.outline))))).toList(),
      onChanged: widget.onChange,
      onTap: widget.onTap,
      onSaved: widget.onSaved,
      validator: widget.validator,
      menuMaxHeight: widget.menuMaxHeight,
      icon: widget.icon ?? const SizedBox.shrink(),
      focusNode: widget.focusNode,
      value: widget.value,
      dropdownColor: Colors.white,
      hint: widget.hint != null ? Text( widget.hint!, style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.outlineVariant.withOpacity(0.3)),textAlign: widget.textAlign,) : null,
      borderRadius: BorderRadius.circular(8),
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onBackground),
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
        prefixIcon: Icon(Icons.keyboard_arrow_down_rounded,
            color: (widget.items?.isEmpty ?? true) ? Theme.of(context).colorScheme.primary.withOpacity(0.3) : Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
