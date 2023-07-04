import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationAndRateRow extends StatelessWidget {
  const LocationAndRateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.grey,
          size: 20.r,
        ),
        Text(
          'Los Angels, USA',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10.sp),
        ),
        17.horizontalSpace,
        Icon(
          Icons.star,
          color: Colors.yellow.shade800,
          size: 20.r,
        ),
        6.horizontalSpace,
        Text(
          '4,8',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10.sp),
        )
      ],
    );
  }
}
