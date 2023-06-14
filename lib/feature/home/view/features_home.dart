import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Featureshome extends StatelessWidget {
  const Featureshome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: REdgeInsetsDirectional.only(top: 12,bottom: 12,end: 20),
        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10.r)),
        height: 40.h,
        width: 40.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.wifi,
              color: Colors.white,
              size: 15.r,
            ),
            Text(
              'Wifi',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: Colors.white, fontSize: 8.sp),
            )
          ],
        ));
  }
}
