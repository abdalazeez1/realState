import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomeChip extends StatelessWidget {
  const CustomeChip({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide.none,
      elevation: 2,
      avatar: Image.asset(image,width: 25.w, height: 25.h,),
      label: Text(text),
    );
  }
}
