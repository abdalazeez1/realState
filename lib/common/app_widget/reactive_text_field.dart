import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

  import 'custom_reactive_text_field.dart';
part '../constant/form_group_key.dart';

class CustomStyleReactiveTextFiled extends StatelessWidget {
  const CustomStyleReactiveTextFiled(
      {Key? key,
        required this.validationMessages,
        required this.formControlName,
        this.maxLine,
        this.labelText,
        this.keyboardType,
        this.obscureText,
        this.decoration,
        this.hintText,
        this.prefixIcon})
      : super(key: key);
  final String formControlName;
  final String? labelText;
  final bool? obscureText;
  final String? hintText;
  final int? maxLine;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final Map<String, ValidationMessageFunction>? validationMessages;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration ??
          BoxDecoration(boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 10,
              color: Colors.black.withOpacity(.05),
            ),
          ]),
      child: CustomReactiveTextField(
        obscureText: obscureText,

        labelText: labelText,
        hintText: hintText,
        keyboardType: keyboardType,

        fillColor: Theme.of(context).colorScheme.surfaceVariant,
        maxLines: maxLine,
        hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
            color:
            Theme.of(context).colorScheme.onSurfaceVariant),
        contentPadding: REdgeInsets.only(left: 14.0, right: 14, top: 10, bottom: 5),
        formControlName: formControlName,
        validationMessages: validationMessages,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        // backgroundColor: Colors.red,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        iconColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
