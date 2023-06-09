import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant/constant.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.controller,
    this.onTap,
    this.onEditingComplete,
    this.onChange,
    this.onFieldSubmitted,
    this.onSaved,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.enabled,
    this.textInputType,
    this.textInputAction,
    this.textDirection,
    this.validator,
    this.maxLengthEnforcement,
    this.focusNode,
    this.autoValidateMode,
    this.scrollPhysics,
    this.scrollController,
    this.initialValue,
    this.keyboardAppearance,
    this.textAlignVertical,
    this.toolbarOptions,
    this.obscuringCharacter = "•",
    this.expands = false,
    this.readOnly = false,
    this.autocorrect = true,
    this.showLength = false,
    this.filled = true,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.textAlign = TextAlign.start,
    this.textCapitalization = TextCapitalization.none,
    this.titleField,
    this.obscure = false,
    this.prefixIcon,
    this.icon,
    this.hintTextStyle,
    this.textStyle,
    this.suffixIcon,
    this.suffix,
    this.hintText,
    this.labelText,
    this.inputFormatters,
    this.contentPadding,
    this.borderColor,
    this.prefix,   this.autofocus,
  }) : super(key: key);

  final TextEditingController? controller;
  final bool? autofocus;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final void Function(String val)? onChange;
  final void Function(String val)? onFieldSubmitted;
  final void Function(String? val)? onSaved;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool? enabled;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextDirection? textDirection;
  final FormFieldValidator<String?>? validator;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final FocusNode? focusNode;
  final AutovalidateMode? autoValidateMode;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;
  final String? initialValue;
  final Brightness? keyboardAppearance;
  final TextAlignVertical? textAlignVertical;
  final ToolbarOptions? toolbarOptions;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final EdgeInsets scrollPadding;
  final bool expands;
  final bool readOnly;
  final bool autocorrect;
  final String obscuringCharacter;
  final String? titleField;
  final bool showLength;
  final bool filled;
  final bool obscure;
  final Widget? prefixIcon;
  final Widget? icon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefix;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final String? labelText;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsetsGeometry? contentPadding;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus ?? false ,
      controller: controller,
      onTap: onTap,
      onChanged: onChange,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      validator: validator,
      maxLines:obscure ? 1 : maxLines,
      minLines: minLines,
      maxLength: showLength ? maxLength : null,
      textAlign: textAlign,
      enabled: enabled,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      textDirection: textDirection,
      scrollPadding: scrollPadding,
      expands: expands,
      maxLengthEnforcement: maxLengthEnforcement,
      focusNode: focusNode,
      obscureText: obscure,
      obscuringCharacter: obscuringCharacter,
      autovalidateMode: autoValidateMode,
      readOnly: readOnly,
      scrollPhysics: scrollPhysics,
      scrollController: scrollController,
      autocorrect: false,
      cursorColor: Theme.of(context).colorScheme.primary,
      initialValue: initialValue,
      keyboardAppearance: keyboardAppearance,
      textAlignVertical: textAlignVertical,
      textCapitalization: textCapitalization,
      toolbarOptions: toolbarOptions,
      inputFormatters: [
        if (maxLength != null) LengthLimitingTextInputFormatter(maxLength),
        if (textInputType == TextInputType.phone || textInputType == TextInputType.number)
          FilteringTextInputFormatter.allow(RegExp("[0-9]")),
        ...?inputFormatters
      ],
      style:textStyle ??  Theme.of(context).textTheme.titleMedium?.copyWith(
        color: Theme.of(context).colorScheme.onBackground,
        decoration: TextDecoration.none,
        decorationColor: Theme.of(context).colorScheme.outline,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        disabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color:  Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error, width: 1),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Theme.of(context).colorScheme.error, width: 1),
          borderRadius: BorderRadius.circular(kbrBorderTextField),
        ),
        filled: filled,
        fillColor: Theme.of(context).colorScheme.outline.withOpacity(0.05),
        contentPadding: contentPadding ?? EdgeInsets.only(left: 20, right: 10),
        prefixIcon: prefixIcon,
        prefix: prefix,
        icon: icon,
        suffixIcon: suffixIcon,
        suffix: suffix,
        hintText: hintText,
        hintStyle: hintTextStyle ?? Theme.of(context).textTheme.bodySmall,
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.outline),
      ),
    );
  }
}
