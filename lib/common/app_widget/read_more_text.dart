import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';


class ReadMoreTextView extends StatelessWidget {
  const ReadMoreTextView({
    Key? key,
    required this.text,
    this.trimLines = 4,
    this.trimMode = TrimMode.Line,
    this.colorClickableText,
    this.style,
  }) : super(key: key);

  final String text;
  final int trimLines;
  final Color? colorClickableText;
  final TrimMode trimMode;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: ReadMoreText(
        text,
        trimLines: trimLines,
        colorClickableText: colorClickableText ?? context.colorScheme.primary,
        trimMode: trimMode,
        trimCollapsedText: 'More ',
        trimExpandedText: ' Less ',
        lessStyle:  context.textTheme.bodyMedium!.b,
        moreStyle:  context.textTheme.bodyMedium!.b,
        style: style,
      ),
    );
  }
}
