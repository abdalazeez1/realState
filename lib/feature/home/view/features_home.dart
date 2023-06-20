import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';

class Featureshome extends StatelessWidget {
  const Featureshome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: REdgeInsetsDirectional.only(top: 12,bottom: 12,end: 20),
        decoration: BoxDecoration(color: context.colorScheme.primary, borderRadius: BorderRadius.circular(10.r)),
        height: 40.h,
        width: 40.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.wifi,
              color: context.colorScheme.onPrimary,
              size: 15.r,
            ),
            Text(
              'Wifi',
              style: context.textTheme.bodySmall!.m.copyWith(color: context.colorScheme.onPrimary),
            )
          ],
        ));
  }
}
